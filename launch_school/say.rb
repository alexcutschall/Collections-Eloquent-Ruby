#First step:
#puts "Hello"
#puts "Hi"
#puts "How are you?"
#puts "I'm just fine."

#def some_method(number)
  #number = 7
#end

#a = 5
#some_method(a)
#puts a
 #prints 5

 #mutate.rb
 a = [1,2,3]
 def mutate(array)
  array.pop
end

p "Before mutate method #{a}"
mutate (a)
p "After mutate method #{a}"
