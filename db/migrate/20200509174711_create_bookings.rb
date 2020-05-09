class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :passenger_id
      t.integer :flight_id
      t.timestamps
    end
  end
end
