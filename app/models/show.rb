class Show < ApplicationRecord
  belongs_to :screen
  belongs_to :movie
  belongs_to :cinema
  has_many :bookings

  validate :show_time_unique

  def show_time_unique
    if show_start_time..show_end_time
      errors.add(:show_start_time, "already exist")
    end
  end

end
