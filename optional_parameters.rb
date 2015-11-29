class Car
  def drive(speed, options = {})
  end
end

car = Car.new
method = car.method(:drive)
p method.parameters # => [[:req, :speed], [:opt, :options]]
