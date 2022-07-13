class Cinema < ApplicationRecord
  has_many :screens
  has_many :shows
end
