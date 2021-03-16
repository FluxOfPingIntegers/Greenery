class Zone
  attr_accessor :name, :num, :plants

  @@all = []
  
  @plants = []

  def initialize(name)
    name = self.cleanup(name)
    @name = name
    @num = self.clean(name)
    self.save
  end

  def add_plant(plant)
    if @plants.none? { |x| x.name == plant.name}
        @plants << plant
    end
  end

  def cleanup(name)
    if name.include? "/"
      x = name.split("/")
      name = x[0]
    end
    name
  end

  def clean(name)
    if name.length == 3
      name = name.delete_suffix("a")
      name = name.delete_suffix("b")
    else
      name = name.chars.first
    end
    name
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
