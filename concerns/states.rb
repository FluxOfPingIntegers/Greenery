class State
  attr_accessor :cities
  attr_reader :name, :abb

  def initialize(name, abb)
    @name = name
    @abb = abb
    @cities = []
  end

end