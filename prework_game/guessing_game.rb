puts """\nI have generated a random number for you to guess.
I'll give you some hints and you try to narrow it down. What is your guess?"""

ran_number = rand(100)

user_input = gets.chomp
while user_input.to_i != ran_number
  puts "Wrong-o!"
    if ran_number.even?
      puts "It's an even number!"
    else
      puts "It's an odd number!"
  end

    if user_input.to_i < ran_number
      puts "It's more than what you just guessed!"
    else
      puts "It's less than what you just guessed!"
  end

    if user_input.include? "(c)" || "(c)heat"
      puts ran_number

  end

  user_input = gets.chomp
end

puts "You guessed right! Look at you!\n\n"

#How to add multiple hints? And keep commenting the first, second, third time that
#they go on it.

#a random number is generated between 1-100

#if the guessed number is the same as random it responds with "you guessed the right number!"
#if not the computer responds with Guess again and the computer must check whether it's higher
#or lower than the random number
#cheat number is put in with (c) or (c)heat and shows random number

#Add a hint. Maybe when the user guesses incorrectly  the computer gives the user a mathem-
#atical hint. odd, even, etc
