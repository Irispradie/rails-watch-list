class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

end
