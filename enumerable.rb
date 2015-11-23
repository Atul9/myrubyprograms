#Enumerable class methods

a = [1, 2, 3, 4, 5,6]
puts a.drop(3) * " "
puts a * " "

puts a.each_cons(3){|i|p i}
