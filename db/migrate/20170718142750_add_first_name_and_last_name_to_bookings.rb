class AddFirstNameAndLastNameToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :first_name, :string
    add_column :bookings, :last_name, :string
  end
end
