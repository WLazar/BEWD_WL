require 'rubygems'
require 'twilio-ruby'
require_relative 'lib/people'
require_relative 'lib/prank'


# check number format
def num_checker(num)
		num = num.to_s
		until num.length == 10
			puts "Please input a 10-digit telephone number (hint: it should start with your area code)"
			num = gets.chomp
			return num
		else
			num = num
		end
	end

# Welcome message
puts "****************** Welcome to Prankster ******************\n\n\n"
puts "We are going to send some prank messages to your friends"
puts "Are you ready? \n Lets do this!"


# Collect user contact info

puts "What is your name?"
from_name = gets.strip
puts "Ok #{from_name}"
puts "First we are going to need your Twilio connected number \nThis should be in the format 5555555555"
from_num = gets
from_num = num_checker(from_num)
from_num = "+1#{from_num}"

# Call methods to instantiate users

puts "Who would you like to prank?"
to_name = gets.chomp
puts "Ok, let's f with #{to_name} \n What is #{to_name}'s phone number?"
_ = gets.to_i		
to_num = num_checker(_) 

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






