class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|

      t.string    :departure_port
      t.string    :arrival_port
      t.date      :departure_date
      t.integer   :duration
      t.integer   :distance
      t.string    :boat_name
      t.string    :description
      t.integer   :capacity
      t.integer   :price

      t.integer   :captain_id

      t.timestamps
    end

    add_foreign_key   :trips, :users, column: :captain_id
    add_index         :trips, :captain_id
  end
end
