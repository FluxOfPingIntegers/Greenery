class State
  attr_accessor :cities
  attr_reader :name, :abb

  @@all = []
  def initialize(name, abb)
    @name = name
    @abb = abb
    @cities = []
  end

  def save
    @@all << self
  end

end