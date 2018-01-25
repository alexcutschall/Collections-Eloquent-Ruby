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
