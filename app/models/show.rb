class Show < ApplicationRecord
  belongs_to :screen
  belongs_to :movie
  belongs_to :cinema
  has_many :bookings

  validate :show_time_unique

  def show_time_unique
    self.screen.shows.each do |show|
      show_start = show.show_start_time
      show_end = show.show_end_time
      if show_start_time <= show_end
        errors.add(:show_start_time, "already exist")
      end
    end
  end

end
