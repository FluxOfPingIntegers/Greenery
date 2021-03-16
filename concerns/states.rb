require_relative './config/environment'
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
    if self.all.none? {|x| x == self}
    self.all << self
    end
  end

  def self.all
    @@all
  end

end