def has_a_lab?(string)
  if string =~ /lab/
    puts "Yes, it has lab in it!"
  else
    puts "No, it doesn't have lab in it."
  end
end

puts has_a_lab?("laboratory")
puts has_a_lab?("experiment")
puts has_a_lab?("Pans Labrynth")
puts has_a_lab?("elaborate")
puts has_a_lab?("polar bear")

#It returns nothing because .call isn't used.
#Exception handling is used for when your applications are being used in the real
#world and has problems. It helps ensure that the rest of the program runs and doesnt
#just stop at an error.

def execute(&block)
  block.call
end

execute do
  puts "Hello from inside the execute method!"
end

#There is no & in front of block.
