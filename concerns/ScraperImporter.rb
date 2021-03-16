class ScraperImporter
  attr_accessor :name

  def initialize(name)
    @name = name
    self.states
    self.zones
    self.cities
  end

  def states
  
  end

  def zones

  end

  def cities
    url = URI.parse("https://en.wikipedia.org/wiki/Hardiness_zone")
    response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(response)
    binding.pry
  end



end