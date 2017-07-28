class RemoveCreditCardNumberFromGuests < ActiveRecord::Migration[5.1]
  def change
    remove_column :guests, :credit_card_number
  end
end
