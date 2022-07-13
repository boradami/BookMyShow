class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to shows_path
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to shows_path
    else
      render :edit
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end


  private

  def show_params
    params.require(:show).permit(:show_start_time, :show_end_time, :amount, :screen_id, :movie_id, :cinema_id)
  end
end
