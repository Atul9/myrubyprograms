# A way to  save and load data is provided by ruby's Marshal library
class Mclass
  def initialize(anum, astr, anArray)
    @num = anum
    @str = astr
    @arr = anArray
  end
  def marshal_dump
    [@num, @arr]
  end

  def marshal_load(data)
    @num = data[0]
    @arr = data[1]
    @str = "default"
  end
end

obj = Mclass.new(100, "fred", [1, 2, 3])
p (obj)
marshal_data = Marshal.dump(obj)
obj2 = Marshal.load(marshal_data)
puts obj2
