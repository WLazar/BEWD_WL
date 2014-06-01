# reddit api search threads tool

require 'pry'
require 'rest-client'
require	'json'

# Number of seconds between opening promots
sleep_timer = 1

# user navigation options
options = "
(1) View Top Reddit Threads
\n(2) Search all posts
\n(3) Search for specfic Sub-Reddits
\n*******************************************************"

# Header
welcome_prompt = "******************************************************* \nWelcome to my Reddit App 
*******************************************************
*******************************************************\n"
puts welcome_prompt
sleep(sleep_timer)
puts "What's your name?\n"

# Get username
user_name = gets.chomp
puts "Ok, #{user_name}, what would you like to do?"
sleep(sleep_timer)


# Navigation prompt
puts "Enter a number to input your choice.\nHere are a few options:"
sleep(sleep_timer)
puts options 
user_nav = gets.chomp

# Option 1: Top Reddits
if user_nav == "1"
	baseurl = "http://www.reddit.com/"
	path = ".json?q="
	address = "#{baseurl}#{path}"
	response = RestClient.get(address)
	puts "Now trending on Reddit: \n*******************************************************
*******************************************************\n"
	top_threads = JSON.load(response)

	top_threads['data']['children'].each do |child|
    	puts child['data']['title']
    end

elsif user_nav == "2"

# Option 2: search all posts
	baseurl = "http://www.reddit.com/search"
	puts "Enter a search term: "
	path = ".json?q="
	query = gets.chomp.downcase
	address = "#{baseurl}#{path}#{query}"
	response = RestClient.get(address)

	puts "Now trending in the #{query} Reddit: \n
*******************************************************
*******************************************************\n"
	sub_reddits = JSON.load(response)

	sub_reddits['data']['children'].each do |child|
    	puts child['data']['title'] + "\n*******************************************************\n"
	end

#Option 3: search subreddits

elsif user_nav == "3"

baseurl = "http://www.reddit.com/subreddits/search"
	puts "Enter a search term: "
	path = ".json?q="
	query = gets.chomp.downcase
	address = "#{baseurl}#{path}#{query}"
	response = RestClient.get(address)

	puts "Now trending in the #{query} Reddit: \n
*******************************************************
*******************************************************\n"
	sub_reddits = JSON.load(response)

	sub_reddits['data']['children'].each do |child|
    	puts child['data']['title'] + "\n*******************************************************\n"
	end
end
