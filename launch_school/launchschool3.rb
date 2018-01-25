def greeting(name)
  puts "Hello #{name}!"
end

puts "Hello. What is your name?"
user_name = gets.chomp
puts greeting(user_name)

#2
#nil
#"Joe"
#"Four"
#nil

def multiply(num1, num2)
  num1 * num2
end

puts multiply(10,560)

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
#Does not print anything
def scream(words)
  words = words + "!!!!"
end
puts scream("Yippeee")
#This prints Yippeee!!!!
#You are calling a method with two arguments but only providing one.
