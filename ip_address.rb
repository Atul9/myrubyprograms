def ip_valid?(ip)
  return true if /([0-9]{1,3}\.){3}[0-9]{1,3}/.match(ip)
  false
end
['1.1.1.1','255.255.255.225.255','0.0.0.0','22.231.113.64','10.0.0.50','1.1.1'].each { |ip|
puts "The ip address : #{ip} is #{ip_valid?(ip)}"}
