# secret_numbers_controller.rb

class SecretNumbersController < ApplicationController

	def new
	end

	def show
		@chosen_number = params[:id].to_i
		@secret_number = rand(5) + 1
	end

end
