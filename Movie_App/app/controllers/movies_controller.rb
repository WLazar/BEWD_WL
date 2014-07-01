class MoviesController < ApplicationController
  
  def index
  	@all_movies = Movie.search_for(params[:q])
  end

  def new
	@movie = Movie.new
  end

	def create
    	@movie = Movie.new safe_movie_params

    	if @movie.save
      		redirect_to @movie
    	else
      		render 'new'
    	end
  	end

  def edit
  end
  
  def show
  	@movie = Movie.find(params[:id])
  end


  private

    def safe_movie_params
      params.require(:movie).permit(:title, :description, :year_released)
    end

end
