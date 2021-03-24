class Zone
  include Findable::InstanceMethods
  attr_accessor :name, :plants

  @@all = []

  
  def initialize(name)
    @name = name
    @plants = []
    self.save
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

  def self.all
    @@all
  end

end
