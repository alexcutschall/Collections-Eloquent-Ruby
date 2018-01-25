# Part 1: Taking Advantage of Ruby's Smart Collections
# First, read chapter 3 (pages 29 through 42).

# Next, use what you've learned to solve these short challenges:

# 1. Using Variable Method Arguments
# Write a method that takes any number of arguments, and prints the value of the first and last arguments, ignoring any middle ones.

# For example, using this method from IRB or Pry might look like:
#
# variable("first", "second", "third")
# first
# third
# nil
# 2. Using Map and Join
# Create an array containing the strings "dog", "cat", "goat", and "capybara"
# Transform this array into a new array where each string is capitalized ("Dog", "Cat", "Goat", "Capybara")
# Combine this collection of capitalized strings into a single string, with each element separated by a comma and a space ("Dog, Cat, Goat, Capybara")

class Exercises
  def print_variables(first_arg, *second_arg, third_arg)
    puts first_arg
    puts third_arg
 end
end

first_exercise = Exercises.new
first_exercise.print_variables("first arg,","second arg", "third arg")

animals = %w{dog cat goat capybara}
#problem with using map instead of each here
capitalized_animals = animals.map {|animal| animal.capitalize}
# require 'pry'; binding.pry
puts capitalized_animals.join(", ")
#3. Dangers of ! Methods
# Summarize in your own words the conventions around methods whose names end in a !
# The bang method often denotes whether a certain menthod permanently changes or mutates
#the object that you are calling on it. The upside to this is that you can then use
#this mutated object throughout your code but the downside is you have permanently
#altered it and it may create problems throughout the rest of your code.

# Part 2: Taking Advantage of Ruby's Smart Strings
# First, read chapter 4 (pages 43 through 52).

# 1. Special Characters in Strings
# What does it mean to "escape" a character within a string?
#This means to make sure that that character is printing out with the string rather
#than interpretated within Ruby

# List 3 characters that have to be "escaped" when written in a string.
# "", ', \

# For example, mine, when printed, would look like:
#
# Horace
# 5'9"
# 2. Splitting Strings
alex = %q{"Alex 5'6"}.split
puts alex
# Take the string of your name and height you generated in the previous section and split it into an array containing your name (as the first element) and height (as the second element).

# 3. Poking at Bytes
# Use the each_byte method on a string to discover which numeric byte values correlate to each character in your name.
#Wasn't working because I was trying to pass an array
name = "Alex"
name.each_byte { |element| puts element}
