class AddMotivationToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :motivation, :string
  end
end
