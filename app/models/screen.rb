class Screen < ApplicationRecord
  belongs_to :cinema
  has_many :seats
  has_many :shows
end
