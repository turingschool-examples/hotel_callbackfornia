# create hotels
10.times do
  hotel = Hotel.create!(
    name: Faker::Company.name,
    location: Faker::Address.state
  )
  puts "Hotel #{hotel.name} located in #{hotel.location} created."
end


# create rooms for hotels
Hotel.all.each do |hotel|
  10.times do
    room = Room.create!(
      number: Faker::Address.building_number,
      hotel_id: hotel.id
    )
    puts "Room number #{room.number} for Hotel #{hotel.name} created."
  end
end

# create guests
50.times do
  guest = Guest.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    credit_card_number: Faker::Business.credit_card_number,
    username: Faker::Internet.user_name,
    password: "password"
  )
  puts "Guest #{guest.first_name} #{guest.last_name} created."
end

# create reservations
50.times do
  guest_ids = Guest.pluck(:id)
  room_ids = Room.pluck(:id)

  guest = Guest.find(guest_ids.sample)
  room = Room.find(room_ids.sample)

  rez = Reservation.create!(
    room_id: room.id,
    guest_id: guest.id
  )
  puts "Reservation #{rez.id} created for #{guest.first_name} #{guest.last_name} in room #{room.number}."
end
