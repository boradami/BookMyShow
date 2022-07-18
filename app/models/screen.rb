class Screen < ApplicationRecord
  belongs_to :cinema
  has_many :seats, dependent: :destroy
  has_many :shows, dependent: :destroy
end
