arr2 = []
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each do |number|
  if number > 5
    arr2 << number
  end
end

arr2.select do |number|
  if number.odd?
    puts number
  end
end

arr2.push(11)
arr2.unshift(0)
puts arr2

arr2.pop
arr2.push(3)
puts arr2
puts arr2.uniq!
#An array is simply a list where as a hash has two inputs with a key and a value

animals = { mammals: ["tigers","bears", "lions"],
          fish:["great white shark", "swordfish", "dolphin"]
}
movies = {:classic => ["Terminator", "Alien", "Dr. Strangelove"],
          :modern => ["Moonlight", "Whiplash", "McFarland"]}
puts animals
puts movies


h = {a: 1, b: 2, c: 3, d: 4}
puts h[:b]
h[:e] = 5
puts h

h.delete_if {|k, v| v < 3.5}

h.delete_if do |k,v|
  v < 3.5
end

#Yes I used it within the other exercises.
#Yes you can have an array of hashes by doing
# arr = [["Joe", "Maurine"], ["John", "Christine"]]

#I like the Ruby core site the best, because it has information and examples
#rather then a bunch of people coming at the problem from different angles

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email]=contact_data[0][0]
contacts["Joe Smith"][:address]=contact_data[0][1]
contacts["Joe Smith"][:phone]=contact_data[0][2]
contacts["Sally Johnson"][:email]=contact_data[1][0]
contacts["Sally Johnson"][:address]=contact_data[1][1]
contacts["Sally Johnson"][:phone]=contact_data[1][2]

puts contacts

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]
#Joe's email
#Sally's phone number

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#for multiple entries
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]
arr.delete_if do |element|
  element.start_with?("s") || element.start_with?("w")
end

puts arr

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map {|pair| pair.split}
a = a.flatten
puts a

#These are the same, but their syntax is old vs. new
