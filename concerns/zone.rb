class Zone
  attr_accessor :name, :plants

  @@all = []

  def initialize(name)
    name = self.cleanup(name)
    @name = self.clean(name)
    @plants = []
    self.save
  end

  #This method needs review
  def add_plant(plant)
    if @plants.none? { |x| x.name == plant.name}
        @plants << plant
    end
  end
  #This method needs review

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
