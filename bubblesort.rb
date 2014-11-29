#Program for bubble sort
def bubble(x, n)
  for i in 0..n
    for j in 0..n-1
      if x[i] < x[j]
        temp = x[j]
        x[j] = x[i]
        x[i] = temp
      end
    end
  end
end
puts "Enter 6 elements"
x = Array.new(5)
for i in 0..4
  x[i] = gets.to_i
end
bubble(x, 4)
puts "Sorted output"
for i in 0..4
  puts x[i]
end
