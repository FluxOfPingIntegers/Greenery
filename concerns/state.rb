class State
  include Findable::InstanceMethods
  attr_accessor :cities
  attr_reader :name, :abb

  @@all = []
  def initialize(name, abb)
    @name = name
    @abb = abb
    @cities = []
    self.save
  end

  def all
    @@all
  end

  def self.all
    @@all
  end

end