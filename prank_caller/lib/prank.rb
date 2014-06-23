class Prank
	attr_accessor :to_name, :to_num, :from_name, :from_num

	def initialize(to_name, to_num, from_name, from_num)
		@to_name = to_name
		@to_num = to_num
		@from_name = from_name
		@from_num = from_num

	end

# create custom message function

	def call
		url_root = "http://twimlets.com/message?Message%5B0%5D="
		puts "Ok, what would you like the message to say?"
		user_input = gets.chomp
		message = user_input.gsub(" ", "%20")
		twimlet = "#{url_root}+#{message}"
		# Connect with Twilio Client
		# Twilio API info
		account_sid = 'ACce8cb4a8123dc79000716413203a1bdf'
		auth_token = '86ea1103f2c6bc19ac8d3accbf01b882'
		@client = Twilio::REST::Client.new account_sid, auth_token
		@client.account.calls.create(
    	:from => from_num, 
    	:to => to_num,
    	:url => twimlet)
		puts "Ok I'm sending a message that says '#{user_input}'"
	end

# pre-populated pranks

	def so_fat
		url = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&"
		# Connect with Twilio Client
		# Twilio API info
		account_sid = 'ACce8cb4a8123dc79000716413203a1bdf'
		auth_token = '86ea1103f2c6bc19ac8d3accbf01b882'
		@client = Twilio::REST::Client.new account_sid, auth_token
		@client.account.calls.create(
    	:from => from_num, 
    	:to => to_num,
    	:url => url)
		
	end

	def so_dumb
		url = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&"	
		# Connect with Twilio Client
		# Twilio API info
		account_sid = 'ACce8cb4a8123dc79000716413203a1bdf'
		auth_token = '86ea1103f2c6bc19ac8d3accbf01b882'
		@client = Twilio::REST::Client.new account_sid, auth_token		
		@client.account.calls.create(
    	:from => from_num, 
    	:to => to_num,
    	:url => url)
	end

end
		
	
# so_fat = "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20looked%20up%20cheat%20codes%20for%20Wii%20Fit&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20zoned%20for%20commercial%20development.&"
# 		]
	
# so_ugly = ["http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20went%20to%20the%20store%20to%20buy%20a%20color%20TV%20and%20asked%20what%20colors%20they%20had.&",
# 		"http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20puts%20lipstick%20on%20her%20head%20just%20to%20make-up%20her%20mind&"]
	


