# palindrome_checker.rb
# checks if user input is a palindrome, if palindrome, puts word is a palindrome

puts "Enter a string"
input = gets.chomp.downcase

position = input.length
reversed_word = ''
while position > 0
  position -= 1
  reversed_word += input[position]
end

if reversed_word == input
  puts "#{input} is a palindrome!"
else
  puts "#{input} is NOT a palindrome..."
end