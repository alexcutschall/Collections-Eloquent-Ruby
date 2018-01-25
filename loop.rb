# 5.times do
#   puts "Line"
# end
#
# num = 0
# while num < 5
#   if num.even?
#     puts "Line is even"
#     num += 1
#   else
#     puts "Line is odd"
#     num += 1
#   end
# end

# 5.times do |val|
#   puts "This is output line #{val}."
# end
#
# num = 0
# while num < 5
#   puts "This is output line #{num}."
#   num += 1
# end
#
# num = 0
# until num > 5
#   puts "This is output line #{num}."
#   num += 1
# end

random_number = rand(0..8)
puts "The secret number is #{random_number}."
user_input = gets.chomp
puts "The Guess is #{user_input}."
while user_input.to_i != random_number
  puts "Guess again!"
end
puts "You win!"
