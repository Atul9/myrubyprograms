#Program to check if the number of vowels in a string
# doctest:Check number of vowels
def checkvowel(str)
  vowels = {'a' => 0, 'e' => 0, 'i' => 0, 'o' => 0, 'u' => 0}
  count = 0
  str.split("").each do|char|
    if !vowels[char].nil?
      vowels[char] += 1
      count += 1
    end
  end
  puts "Vowels found: #{count}"
  vowels.each do |k,v|
    puts "#{k}: #{v}"
  end
end

puts "Enter a text"
str = gets.chomp
checkvowel(str.downcase!)
