# p019mtdarry.rb
# if you give return multiple parameters, 
# the method returns them in an array
# The times method of the Integer class iterates block num times, 
# passing in values from zero to num-1

def mtdarry
  1.times do |num|
    num = 2
    square = num * num
    cube = num * num * num
    return num, square, cube
  end
end

# using parallel assignment to collect the return value
num, square, cube = mtdarry
puts num
puts square
puts cube
