class Car
  def drive(speed, options = {}, &blk)
  end
end
car = Car.new
method = car.method(:drive)
p method.parameters # => [[:req, :speed], [:opt, :options], [:rest, :args], [:block, :blk]]. The :rest symbol is for variable length argument list.
