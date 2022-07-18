class Cinema < ApplicationRecord
  has_many :screens, dependent: :destroy
  has_many :shows, dependent: :destroy
  has_many :movies, dependent: :destroy
  belongs_to :city
end
