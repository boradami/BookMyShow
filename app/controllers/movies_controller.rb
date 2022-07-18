class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:name].present?
      @movies = Movie.all.where('name ilike ?', "%#{params[:name]}%")
    elsif params[:cinema_id].present?
      @cinema = Cinema.find(params[:cinema_id])
      @movies = @cinema.movies
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :language, :movie_type, :duration, :release_date, :cinema_id)
  end
end
