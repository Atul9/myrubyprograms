class Car
  def drive(direction:, speed: :high, **args)
    [direction, speed, args]
  end
end
car = Car.new
drive_method = car.method(:drive)
p car.drive(direction: "something")
p car.drive(direction: 'north', speed: '35km')
p car.drive(speed: '25km', direction: 'west', style: 'sedan', color: 'blue')
p drive_method.parameters
p drive_method.arity
