#Inspecting method parameters
class Car
  def drive(speed)
  end
end

car = Car.new
method = car.method(:drive)
p method.parameters # => [[:req, :speed]]
