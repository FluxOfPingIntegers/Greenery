class Plant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.save
  end

  def save
    if self.all.none? {|x| x.name == self.name}
    self.all << self
    end
  end

  def all
    @@all
  end

  def self.all
    @@all
  end

end