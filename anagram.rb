#program to check if 2 strings are equal or not after scrambling the letters (Anagrams)

# doctest: Checking for anagram
# >> is_anagram("Hello","lolhe")
# => true
# doctest: Check
# >> is_anagram("Hello","Helo")
# => false
def is_anagram(str1,str2)
  str1.downcase.split("").sort.join == str2.downcase.split("").sort.join
  #split method to split each character and form an array.
  #sort method to sort the array and join the array to form a single string and then compare both strings
end

if __FILE__ == $PROGRAM_NAME
  puts "Enter 2 string :"
  str1 = gets.chomp
  str2 = gets.chomp

  if is_anagram(str1,str2)
    puts "The two string are equal and string2 is an anagram"
  else
    puts "The two strings are not equal"
  end
end
