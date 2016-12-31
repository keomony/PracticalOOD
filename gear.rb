class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel] 
  end
  def wheel
    @wheel ||= Wheel.new(rim, tire)
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
