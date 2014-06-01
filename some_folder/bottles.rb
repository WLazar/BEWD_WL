99.downto(1) do |x|
	if x == 1
		puts "#{x} bottle of beer on the wall"
		puts "#{x} bottle of beer"
		puts "take one down, pass it around, 0 bottles of beer on the wall"
	else
		puts "#{x} bottles of beer on the wall"
		puts "#{x} bottles of beer"
		puts "take one down, pass it around #{x-1} bottles of beer on the wall"
	end
end