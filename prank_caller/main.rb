require 'twilio-ruby'
require_relative 'lib/people'
require_relative 'lib/messages'


account_sid = 'ACce8cb4a8123dc79000716413203a1bdf'
auth_token = '86ea1103f2c6bc19ac8d3accbf01b882'

# Welcome message
puts "****************** Welcome to Prankster ******************"
sleep(sleep_timer)
puts "We are going to send some prank messages to your friends"
puts "Are you ready? \n Lets do this!"

# Collect user info
def create_user
	puts "What is your name?"
	name = gets.strip
	puts "Ok #{name}"
	puts "First we are going to need a Twilio connected number \nPlease enter a number for your outbound call. This should be a string"
	from_num = gets.to_i

  User.new(name, from_num)
end

# Connect with Twilio Client

client = Twilio::REST::Client.new account_sid, auth_token

client.account.messages.create(
    :from => from_num, 
    :to => to_num,
    :body => joke
)


