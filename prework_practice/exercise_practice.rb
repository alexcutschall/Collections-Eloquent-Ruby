puts "Turing"
answer1 = "Turing"[0]
puts answer1

answer2 = "Turing".length
puts answer2

answer3 = "Turing".upcase
puts answer3

answer4 = "Turing".delete("n")
puts answer4

var = "Turing"
puts var

puts "What is your first name?"

first_name = gets
puts first_name

puts "What is your last name?"

last_name  = gets.chomp #removes the \n built into gets
puts last_name

puts "What is your favorite number?"

fav_num = gets
puts fav_num

puts fav_num.to_i

animals = ["dog", "cat", "penguin", "armadillo"]
puts animals[0] #"dog"

#animals.push("piggy")
animals << "piggy"

puts animals
puts animals.length #5
puts animals.empty? #false
animals.pop
puts animals
