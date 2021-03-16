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
    if self.all.none? {|x| x.name == self.name}
    self.all << self
    end
  end

  def all
    @@all
  end

end