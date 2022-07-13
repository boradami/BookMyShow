class CreateJoinTableSeatsBookings < ActiveRecord::Migration[6.0]
  def change
    create_join_table :seats, :bookings do |t|
      # t.index [:seat_id, :booking_id]
      # t.index [:booking_id, :seat_id]
    end
  end
end
