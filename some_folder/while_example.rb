# x = 100

# while x > 0 
# 	x -= 1
# 	puts "this loop will run #{x} more times"
# end

command = ''

while command != 'bye'
	puts command
	command = gets.chomp
end

puts 'come again soon'