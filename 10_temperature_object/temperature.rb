class Temperature

  attr_accessor :in_celsius, :in_fahrenheit

  def initialize (temphash)
    if temphash.has_key?(:f)
      @in_celsius = (temphash.values[0] - 32) * 5.0/9.0
      @in_fahrenheit = temphash[:f]
    else
      @in_fahrenheit = (temphash.values[0] * 9.0/5.0) + 32
      @in_celsius = temphash[:c]
    end
  end

  def Temperature.from_celsius(value)
    Temperature.new(:c => value)
  end

  def Temperature.from_fahrenheit(value)
    Temperature.new(:f => value)
  end

end


class Celsius < Temperature
  def initialize(value)
    @in_fahrenheit = (value * 9.0/5.0) + 32
    @in_celsius = value
  end

end



class Fahrenheit < Temperature
  def initialize(value)
    @in_celsius = (value - 32) * 5.0/9.0
    @in_fahrenheit = value
  end

end