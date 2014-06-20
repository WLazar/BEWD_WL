class MoviesController < ApplicationController
  def index
  	@all_movies = Movie.search_for(params[:q])
  end

  def show
  	@movie = Movie.find(params[:id])
  end
end
