#It simply prints out the array. I'm confused as to why you can't write it like
#this though. It prints the same thing.
x = [1,2,3,4,5]
x.each do |a|
  puts a
  end

puts "Hello! What would you like me to say?"
user_input = gets.chomp
puts user_input
while user_input != "STOP"
  puts "What else would you like me to say?"
  user_input = gets.chomp
  puts user_input
end

movies = ["Dr. Strangelove,", "Planet Earth", "Rushmore", "Grand Budapest Hotel"]
movies.each_with_index do | movie, index|
  puts "#{index + 1}\) #{movie}"
end

def count_to_zero(start)
  puts start
  if start > 0
    count_to_zero(start - 1)
  end
end

puts count_to_zero(500)
