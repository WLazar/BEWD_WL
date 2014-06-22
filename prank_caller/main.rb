require 'rubygems'
require 'twilio-ruby'
require_relative 'lib/people'
require_relative 'lib/action'

# Twilio API info
account_sid = 'ACce8cb4a8123dc79000716413203a1bdf'
auth_token = '86ea1103f2c6bc19ac8d3accbf01b882'

# Welcome message
puts "****************** Welcome to Prankster ******************\n\n\n"
puts "We are going to send some prank messages to your friends"
puts "Are you ready? \n Lets do this!"

#collect user contact info
def create_user
		puts "What is your name?"
		from_name = gets.strip
		puts "Ok #{from_name}"
		puts "First we are going to need your Twilio connected number \nThis should be in the format +15555555555"
		from_num = gets.to_i
		puts "Who would you like to prank?"
		to_name = gets.chomp
		puts "Ok, let's f with #{to_name} \n What is #{to_name}'s phone number?"
		to_num = gets.to_i		
	  User.new(from_name, from_num, to_name, to_num)
	end


# check number format
def num_checker(num)
		if num != String
			num = num.to_s
		else
			num = num
		end
	end

# generate prank

def joke_constructor
	so_fat = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&"
	so_ugly = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&"	

	puts "Press (1) to send a yo mama's so fat joke"
	puts "Press (2) to send a yo mama's so ugly joke"
	
	choice = gets.to_i
	if choice == 1
		url = so_fat
		puts "OK, we're going to send a yo mama's so fat joke"
		return url
	elsif choice == 2
		url = so_ugly
		puts "Ok, we're going to send a ya mama's so ugly joke"
		return url
	else
		puts "Please enter either (1) or (2)"
	end
end



# Call methods to instantiate users

user = create_user

url = joke_constructor

# Connect with Twilio Client

client = Twilio::REST::Client.new account_sid, auth_token

client.account.calls.create(
    :from => user.from_num, 
    :to => user.to_num,
    :url => url
)


