require "net/http"
require "uri"
require "json"

uri = URI.parse("http://www.reddit.com/user/brain_poop/comments/.json")

response = Net::HTTP.get_response(uri)

data = JSON.parse(response.body)


data['data']['children'].each do |child|
    puts child['data']['body']
end