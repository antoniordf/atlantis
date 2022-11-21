class AddYachtToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :yacht, null: false, foreign_key: true
  end
end
