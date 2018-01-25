arr = [1,3,5,7,9,11]
number = 3
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
puts arr
#Solution
#1. returns 1
    #arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
    #only the 1 in the first has been deleted since the arr.first is telling
    #the program to delete the last from the first one


arr= ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
puts arr

arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr.last.first

arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) #3
arr.index[5] #undefined method
arr[5] #8

#e
#A
#nil

#I would do names.pop and then name.push("jody")
#or you could do names[3] = 'jody'

arr = [1,2,3]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end
p arr
p new_arr
