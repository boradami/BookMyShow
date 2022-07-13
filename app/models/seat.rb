class Seat < ApplicationRecord
  belongs_to :screen
  has_and_belongs_to_many :bookings
end
