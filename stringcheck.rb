#Program to check for :
#2nd string is 1 character less than 1st string
def checkstring(str1,str2)
  l1 = str1.length
  l2 = str2.length
  a = str1.downcase.split("")
  b = str2.downcase.split("")
  counteq = 0
  missing = 0
  j = 0
  if l2 < l1-1
    for i in 0..str1.length
      if a[i] == b[j]
        counteq += 1
        j = j + 1
      else
        missing += 1
        j = 0
      end
    end
  end
  puts counteq
  puts missing
 # if str2.length == counteq && missing == 1
 #  puts "Strings are equal"
 #   else
 #     puts "Strings are unequal"
 # end
end

puts "Enter two strings: "
str1 = gets.chomp
str2 = gets.chomp
checkstring(str1,str2)
