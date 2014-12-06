# p015elsifex.rb
# elseif example

# Original example
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Atul'
  puts 'What a nice name!!'
else
  if name == 'Sachin'
    puts 'Another nice name!'
  end
end

# Modified example with elseif
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Atul'
  puts 'What a nice name!!'
elsif name == 'Sachin'
    puts 'Another nice name!'
end

# Further modified
puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts 'Hello, ' + name + '.'

# || is the logical or operator
if name == 'Atul' || name == 'Sachin'
  puts 'What a nice name!!'
end
