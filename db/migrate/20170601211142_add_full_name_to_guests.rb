class AddFullNameToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :full_name, :string
  end
end
