require 'pry'
require 'rest-client'
require	'json'

puts "Enter a search term: "
input = gets.chomp
response = RestClient.get("http://www.omdbapi.com/?s=#{input}")
movies = JSON.load(response)

movies["Search"].each do |film|
	puts film["Title"]
end