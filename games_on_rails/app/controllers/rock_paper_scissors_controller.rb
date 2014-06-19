# secret_numbers_controller.rb

class RockPaperScissorsController < ApplicationController
  
  def new
  	@throw = get_throw
  end

  def get_throw
  	['rock', 'paper' ,'scissors']
  end 


  def show
  	@throw = get_throw
  	@user_throw = @throw[params[:id].to_i]
  	@comp_throw = @throw[rand(2)]
  	@status = ""
  end

  def result(comp_throw, user_throw)
  	if user_throw == "rock" && @comp_throw == "scissors"
  		@status = :win
  	elsif user_throw == "paper" && @comp_throw == "rock"
  		@status = :win
  	elsif user_throw == "scissors" && @comp_throw == "paper"
  		@status = :win
  	elsif user_throw == "scissors" && @comp_throw == "rock"
  		@status = :lose
  	elsif user_throw == "rock" && @comp_throw == "paper"
  		@status = :lose
  	elsif user_throw == "paper" && @comp_throw == "scissors"
  		@status = :lose
  	else
  		@status = :tie
  	end
  end


end

