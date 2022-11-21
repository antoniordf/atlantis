class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.time :start_date_time
      t.time :end_date_time

      t.timestamps
    end
  end
end
