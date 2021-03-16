class City
  attr_accessor :name, :state, :zone

  def initialize(name, state, zone)
    @name = name
    @state = state
    @zone = zone
    self.check
  end

  def check
    if State.all.each.none? {|x| x.cities == self.name}
      x = State.all.select {|x| x.name == self.state}
      binding.pry
      x[0].cities << self
    end
  end
end