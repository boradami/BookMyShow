class ScreensController < ApplicationController

  def index
    @screens = Screen.all
  end

  def show
    @screen = Screen.find(params[:id])
  end

  def new
    @screen = Screen.new
  end

  def create
    @screen = Screen.new(screen_params)
    if @screen.save
      redirect_to screens_path
    else
      render :new
    end
  end

  def edit
    @screen = Screen.find(params[:id])
  end

  def update
    @screen = Screen.find(params[:id])
    if @screen.update(screen_params)
      redirect_to screens_path
    else
      render :edit
    end
  end

  def destroy
    @screen = Screen.find(params[:id])
    @screen.destroy
  end
  
  private

  def screen_params
    params.require(:screen).permit(:screen_name, :total_seats, :cinema_id, :movie_id)
  end
end
