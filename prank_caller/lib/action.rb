class Prank
	attr_accessor :from_num, :to_num

	def initialize(from_num, to_num)
		@from_num = from_num
		@to_num = to_num

	end

	def call(message)
		
		url_root = "http://twimlets.com/message?Message%5B0%5D="
		message = user_input.gsub(" ", "%20")
		twimlet = "#{url_root}+#{message}"

		@client.account.calls.create(
    	:from => from_num, 
    	:to => to_num,
    	:url => url)

	end

# create custom message function
def custom_message(user_input)
		
end


# generate prank

def so_fat
	so_fat = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&"
	so_ugly = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&"	

	puts "Press (1) to send a yo mama's so fat joke"
	puts "Press (2) to send a yo mama's so ugly joke"
	puts "Press (3) to send a custom message"
	
	choice = gets.to_i
	if choice == 1
		url = so_fat
		puts "OK, we're going to send a yo mama's so fat joke"
		return url
	elsif choice == 2
		url = so_ugly
		puts "Ok, we're going to send a ya mama's so ugly joke"
		return url
	elsif choice == 3
		puts "Ok, what would you like to say?"
		input = gets.chomp
		url = custom_message(input)
		puts "Ok I'm sending a message that says '#{input}'"
	else
		puts "Please enter either (1), (2), or (3)"
	end
end

	def message
	end

end

	# def custom_message
	# 	url_root = "http://twimlets.com/message?Message%5B0%5D="
	# 	puts "Ok, what would you like to say?"
	# 	raw_message = gets.chomp
	# 	message = raw_message.gsub(" ", "%20")
	# 	twimlet = "#{url_root}+#{message}"
	# 	end
	# end
		
	
# so_fat = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20looked%20up%20cheat%20codes%20for%20Wii%20Fit&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20zoned%20for%20commercial%20development.&"
# 		]
	
# so_ugly = ["http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20went%20to%20the%20store%20to%20buy%20a%20color%20TV%20and%20asked%20what%20colors%20they%20had.&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20puts%20lipstick%20on%20her%20head%20just%20to%20make-up%20her%20mind&"]
	


