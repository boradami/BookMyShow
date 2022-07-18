class Movie < ApplicationRecord
  has_many :shows
  belongs_to :cinema
end
