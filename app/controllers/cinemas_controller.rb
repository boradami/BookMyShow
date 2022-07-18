class CinemasController < ApplicationController
  def index
    if params[:city_id].present?
      @city = City.find(params[:city_id])
      @cinemas = @city.cinemas
    else
      @cinemas = Cinema.all
    end
  end

  def show
    @cinema = Cinema.find(params[:id])
  end

  def new
    @cinema = Cinema.new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      redirect_to cinemas_path
    else
      render :new
    end
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  def update
    @cinema = Cinema.find(params[:id])
    if @cinema.update(cinema_params)
      redirect_to cinemas_path
    else
      render :edit
    end
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy
  end

  private

  def cinema_params
    params.require(:cinema).permit(:name, :address, :city_id)
  end
end
