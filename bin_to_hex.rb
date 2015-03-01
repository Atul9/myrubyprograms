def bin_to_hex(s)
  s.each_byte.map{ |b|
    b.to_s(16)}.join(' ')
end

def hex_to_bin(s)
  s.scan(/../).map{ |x|
    x.hex.chr}.join
end
s = "Hello world"
puts bin_to_hex(s)
h = bin_to_hex(s)
puts h
puts hex_to_bin(h)
def b_to_h(s)
  s.unpack('H*').first
end
def h_to_b(s)
  s.scan(/../).map{|x|
    x.hex}.pack('c*')
end
puts b_to_h(s)
puts h_to_b(h)
