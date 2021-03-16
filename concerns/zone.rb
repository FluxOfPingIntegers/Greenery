class Zone
  attr_accessor :name, :num, :plants

  @@all = []
  
  @plants = []

  def initialize(name)
    if name.include? "/"
      x = name.split("/")
      name = x[0]
    end
    @name = name
    @num = name.chars.first
    self.save
  end

  def add_plant(plant)
    if @plants.none? { |x| x.name == plant.name}
        @plants << plant
    end
  end

  def all
    @@all
  end

  def save
    if self.all.none? {|x| x.name == self.name}
    self.all << self
    end
  end

  def self.all
    @@all
  end

end