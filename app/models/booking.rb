class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user 
  has_and_belongs_to_many :seats
end