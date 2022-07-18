class SeatsController < ApplicationController

  def index
    @seats = Seat.all
  end
  
  def new
    @seat = Seat.new
  end

  def create
    @seat = Seat.new(seat_params)
    if @seat.save
      ActiveRecord::Base.transaction do
        @seat.seat_number.to_i.times do |n|
          Seat.create!(seat_number: "A#{n+1}", screen_id: 3)
        end
      end
      redirect_to seats_path
    else
      render :new
    end
  end
  
  private 

  def seat_params
    params.require(:seat).permit(:seat_number, :screen_id)
  end
end
