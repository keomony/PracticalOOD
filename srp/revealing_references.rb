

class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect {|wheel|
      wheel.rim + (wheel.tire * 2)}
  end

Wh = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect { |cell|
      Wh.new(cell[0], cell[1])}
  end
end

w = RevealingReferences.new([[1,2],[3,4]])
p w.diameters
p w.wheels
