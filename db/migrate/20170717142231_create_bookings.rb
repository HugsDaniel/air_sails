class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string      :status, default: "pending"
      t.integer     :price

      t.references  :user, foreign_key: true
      t.references  :trip, foreign_key: true
      
      t.timestamps
    end
  end
end
