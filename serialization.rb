class Klass
  def initialize(str)
    @str = str
  end

  def sayHello
    @str
  end
end

o = Klass.new("Hello\n")
data = Marshal.dump(o)
obj = Marshal.load(data)
puts obj.sayHello
