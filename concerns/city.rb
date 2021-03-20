class City
  attr_accessor :name, :state, :zone

  def initialize(title, zone)
    self.zone_cleanup(zone)
    self.title_assign(title, zone)
    x = @state
    x.cities << self
    @state = x.abb
  end

  def title_assign(title, zone)
    x = title.split(",")
    @name = x[0]
    x[1].delete_prefix!(" ")
    if x[1].include?("/")
      y = x[1].split("/")
     state = State.all.select{|state| state.name == y[0]}
     @state = state[0]
     City.new("#{x[0]}, #{y[1]}", "#{zone}")
    else
      state = State.all.select{|state| state.name == x[1]}
      @state = state[0]
    end
  end

  def zone_cleanup(zone)
    if zone.include? "/"
      x = zone.split("/")
      zone = x[0]
    end
    zone = zone.to_i
    x = Zone.all.find {|i| i.name == zone}
    @zone = x
  end

end