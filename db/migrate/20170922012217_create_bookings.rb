class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passenger_id
      t.integer :num_tickets

      t.timestamps
    end
  end
end
