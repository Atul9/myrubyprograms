# p009mymethods1.rb
# interpolation refers to the process of inserting the result of an
# expression into a string literal
# the interpolation operator #{...} gets calculated separately
def mtd(arg1="Atul", arg2="Sujay", arg3="Sachin")
  "#{arg1}, #{arg2}, #{arg3}."
end
puts mtd
puts mtd("ruby")
