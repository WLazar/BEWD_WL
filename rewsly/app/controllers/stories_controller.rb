class StoriesController < ApplicationController

	def new
		@story = Story.new
	end

	def show
		@story = Story.find(params[:id])
	end

	def index 
		@stories = Story.all
		@story = Story.new
	end

	def create
		@story = Story.new(story_params)
			if @story.save
				redirect_to @story
			else
				render 'new'
			end
		end
	end



	def update
			@story = Story.find(params[:id])
			@story.update story_params
			redirect_to @story
	end

	def edit
		@story = Story.find(params[:id])
	end

	def story_params
		params.require(:story).permit(:title, :link, :category)
	end


