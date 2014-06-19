class Action

	def num_checker(num)
		if num != String
			num = num.to_s
		else
			num = num
		end
	end

	def prank
		puts "Who would you like to prank?"
		to_name = gets.chomp
		sleep(sleep_timer)
		puts "Ok, let's f with #{to_name} \n What is #{to_name}'s phone number?"
		to_num = gets.to_i		
	end

	def joke_prompt
		puts "Enter (1) to send a yo mama's so fat joke"
		sleep(sleep_timer)
		puts "Enter (2) to send a yo mama's so dumb joke"
		choice = gets.to_i
	end

	
	def joke_constructor
		so_fat = { 
			1 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20floating%20in%20the%20ocean%20and%20Spain%20claimed%20her%20for%20the%20New%20World.%0A&",
			2 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20looked%20up%20cheat%20codes%20for%20Wii%20Fit&",
			3 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20fat%20that%20she%20was%20zoned%20for%20commercial%20development.&"
			}

		so_ugly = {
			1 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20peals%20M%26M's%20to%20make%20chocolate%20chip%20cookies.&",
			2 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20went%20to%20the%20store%20to%20buy%20a%20color%20TV%20and%20asked%20what%20colors%20they%20had.&",
			3 => "http://twimlets.com/message?Message%5B0%5D=Yo%20mama%20is%20so%20stupid%20that%20she%20puts%20lipstick%20on%20her%20head%20just%20to%20make-up%20her%20mind&",
			}
			
			if choice == 1
				joke = so_fat[rand(2)+1]
			else
				joke = so_dumb[rand(2)+1]
			end
		end
end
