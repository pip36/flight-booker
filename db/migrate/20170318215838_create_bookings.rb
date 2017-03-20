class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passenger_id
      t.integer :booking_ref

      t.timestamps
    end
  end
end
