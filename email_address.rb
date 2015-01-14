def valid_email?(email)
  return true if /[a-z0-9_.]+@[a-z.]+/.match(email)
  false
end
['a@b.com','abc11@gmail.co.in','11joke@g.com', '111@11.11', 'g11.g.com1'].each{ |e|
puts "The email address  is #{e} is #{valid_email?(e)}"}
