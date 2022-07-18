class Cinema < ApplicationRecord
  has_many :screens
  has_many :shows
  has_many :movies
  belongs_to :city
end
