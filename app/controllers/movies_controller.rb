class MoviesController < ApplicationController
  # read
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  # # create
  # def create
  #   @movie = Movie.new
  # end

  # def new
  #   @movie = Movie.new(params_movie)
  #   @movie.save
  #   redirect_to movie_path(@movie)
  # end

  # private

  # def params_movie
  #   params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  # end
end
