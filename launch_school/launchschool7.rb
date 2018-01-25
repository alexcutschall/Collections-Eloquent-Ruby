family = { uncles: ["bob", "joe", "steve"],
immediate_family = family.select do |k,v|
  k == :sisters || k == :brothers
end
arr = immediate_family.values.flatten
p arr

#merge! will mutate them.
person = {height: "5\' 6\"", weight: "150 lbs"}
person_more = {likes: "Rock climbing", dislikes: "Washing Dishes"}
puts person.merge(person_more)
puts person
puts person.merge!(person_more)
puts person
#prints this
#{:height=>"5' 6\"", :weight=>"150 lbs", :likes=>"Rock climbing", :dislikes=>"Washing Dishes"}
#{:height=>"5' 6\"", :weight=>"150 lbs"}
#{:height=>"5' 6\"", :weight=>"150 lbs", :likes=>"Rock climbing", :dislikes=>"Washing Dishes"}
#{:height=>"5' 6\"", :weight=>"150 lbs", :likes=>"Rock climbing", :dislikes=>"Washing Dishes"}
person = {:height=>"5' 6\"", :weight=>"150 lbs", :likes=>"Rock climbing", :dislikes=>"Washing Dishes"}
puts person.each_key {|key| puts key}
puts person.each_value {|values| puts values}
puts person.each {|key, value| puts "You can describe me with my #{key} as #{value}."}

puts person[:name]
puts person.has_value?("150 lbs")

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
puts "------"
p v
end

#The first create the x symbol as a key. The second used the stringe value of x
#as the key
#There are no keys in Arrays
