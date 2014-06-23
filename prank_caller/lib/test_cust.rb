# create custom message

def custom_message(user_input)
		url_root = "http://twimlets.com/message?Message%5B0%5D="
		message = user_input.gsub(" ", "%20")
		twimlet = "#{url_root}+#{message}"
		puts twimlet
end

input = gets.chomp
test = custom_message(input)
puts test