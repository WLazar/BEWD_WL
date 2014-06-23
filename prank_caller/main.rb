require 'rubygems'
require 'twilio-ruby'
require_relative 'lib/people'
require_relative 'lib/prank'


# Welcome message
puts "****************** Welcome to Prankster ******************\n\n\n"
puts "We are going to send some prank messages to your friends"
puts "Are you ready? \n Lets do this!"


# Collect user contact info

puts "What is your name?"
from_name = gets.strip
puts "Ok #{from_name}"
puts "First we are going to need your Twilio connected number \nThis should be in the format +15555555555"
from_num = gets.to_i

# check number format
def num_checker(num)
		if num != String
			num = num.to_s
		else
			num = num
		end
	end

# Call methods to instantiate users

puts "Who would you like to prank?"
to_name = gets.chomp
puts "Ok, let's f with #{to_name} \n What is #{to_name}'s phone number?"
to_num = gets.to_i		

message = Prank.new(to_name, to_num, from_name, from_num)

puts "Ok. Now that we have #{to_name}'s contact info, let's craft a message."
puts "Press (1) to send a yo mama's so fat joke"
puts "Press (2) to send a yo mama's so ugly joke"
puts "Press (3) to send a custom message"

choice = gets.to_i
	if choice == 1	
		puts "OK, we're going to send a yo mama's so fat joke"
		prank = message.so_fat	
	elsif choice == 2
		puts "Ok, we're going to send a ya mama's so dumb joke"
		prank - message.so_dumb
	elsif choice == 3
		prank = message.call
	else
		puts "Please enter either (1), (2), or (3)"
	end






