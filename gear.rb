class Gear
  attr_reader :chainring, :cog, :rim, :tire, :wheel
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def diameter
    wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

end
