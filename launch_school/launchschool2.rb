puts "Hello, what is your name?"
first_name = gets.chomp

10.times do
  puts first_name
end

puts "What's your last name?"
last_name = gets.chomp

puts "It's a pleasure to meet you, #{first_name + " " + last_name}!"

puts "How old are you?"
age = gets.chomp.to_i
puts "In ten years you will be #{age + 10}!"
puts "In twenty years you will be #{age + 20}!"
puts "In thirty years you will be #{age + 30}!"

# First problem prints 3 and the second prints an error
#A local variable is being called on but doesn't exist. This occurs
#through a programmer calling an incorrect name or trying to access outside it's scope
