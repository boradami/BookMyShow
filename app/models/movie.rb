class Movie < ApplicationRecord
  has_many :shows, dependent: :destroy
  belongs_to :cinema
end
