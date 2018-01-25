#Echo
#puts "What do you want to say? >"
#echo = gets.chomp

#puts "You said: #{echo}."

#Calculator
#puts "Please give me a number! >"
#number1 = gets.chomp.to_i

#puts "Please give me another number! >"
#number2 = gets.chomp.to_i

#number3 = number1 + number2
#puts "This is the answer #{number3}."

#puts "How many apples do you have? > "
#apple_count = gets.to_i
#puts "You have #{apple_count} apples."

#if apple_count > 5
	#puts "Lots of apples!"
#else
	#puts "Not many apples...."
#end

total = 0
user_input = nil
while user_input != "stop"
	print "Enter a number to add to the total. > "
	user_input = gets.chomp
	total = total + user_input.to_i
end
puts "Your final total is #{total}!"


