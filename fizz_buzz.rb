#fizz_buzz.rb

1.upto(100) do |x|
	if x % 3 == 0
		puts "fizz"
	elsif x % 5 == 0
		puts "buzz"
	elsif x % 3 and x % 5 == 0
		puts "fizzbuzz"	
	else
		puts x
	end
end