#secret_number_wl.rb

#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.

puts "Hi there! This is the secret number game.\n"
sleep_timer = 1
sleep(sleep_timer)
puts "What is your name?"
user_name = gets.chomp
sleep(sleep_timer)
puts "Ok, #{user_name}, let's go over the rules."
sleep(sleep_timer)
puts "In this game, I will think of a secret number between 1 and 10 (inclusive)."
sleep(sleep_timer)
puts "\nYou will have 3 guesses to figure out what number I am thinking of."
sleep(sleep_timer)
puts "\nIf you guess the number before you run out of turns, you win a free high five."
sleep(sleep_timer)
puts "\nIf you can't guess the number, you have to give me your computer."

#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
number = rand(1..10)
guesses = 3

while guesses > 0
# Ask the user for their guess.
puts "Guess a number between 0 and 10"
user_input = gets.chomp

# Convert string input to int
guess = user_input.to_i

# Give the player some direction. If they guess too high let them know, if they guess too low, let them know.
	if guess > number
		puts "You guessed too high!"
		guesses -= 1
	elsif guess < number
			puts "You guessed too low"
			guesses -= 1

# Tell player how many guesses they have left.	
	puts "you have #{guesses} more guesses left"

# Verify if they were correct. 
	elsif
		guess = number
		puts "You guessed right! Nice."
# Print that the Player lost and the game is over. Also let them know what the `secret_number` was.		
	end
end

if guesses == 0
	puts "The secret number was #{number}\nGame over!"
end







#
# 
#
###############################################################################