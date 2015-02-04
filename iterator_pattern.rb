def list_numbers(&block)
  (0..3).each(&block)
end

list_numbers do |i|
  if i < 2
    puts "#{i} is a little number"
  else
    puts "#{i} is a big number"
  end
end

#Iterator Pattern
#Allows sequential access to the elements.
