# reddit api top threads tool

require 'pry'
require 'rest-client'
require	'json'

baseurl = "http://www.reddit.com/search.JSON"
puts "Now trending on Reddit: "
path = ".json?q="
address = "#{baseurl}#{path}"
response = RestClient.get(address)

puts "Now trending on Reddit: "
top_threads = JSON.load(response)

top_threads['data']['children'].each do |child|
    puts child['data']['title']
