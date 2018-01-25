def roll
    rand(6) + 1
  end
puts roll

def roll(sides)
  rand(sides) + 1
end
puts roll(6)

#added an argument number, it's a default argument
#so that way if we don't add anything, this is the default
def roll(sides, number=1)
  #an empty array to hold the dice we're about to roll
  roll_array = []

  #This allows us to roll as many times as the number
  number.times do
      roll_value = rand(sides) + 1
      roll_array << roll_value
  end

#total is what we are using to hold combined rolls total
  total = 0
  roll_array.each do |roll| #the |roll| is storing the variables
    new_total = total + roll
    total = new_total
  end
  total
end
puts "We're rolling a six side die!"
puts roll(6)

puts "Now we're rolling two 20 sided die!"
puts roll(20,2)
