class AddAuthToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :password_digest, :string
    add_column :guests, :username, :string
  end
end
