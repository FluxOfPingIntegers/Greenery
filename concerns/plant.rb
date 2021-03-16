class Plant
  include Findable::InstanceMethods
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.save
  end

  def all
    @@all
  end

  def self.all
    @@all
  end

end