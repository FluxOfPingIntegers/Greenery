class ScraperImporter
  attr_accessor :name, :state_names, :zone_names

  def initialize(name)
    @name = name
    self.states
    self.zones
    self.cities
  end

  def states
    states = [
      ["AK", "Alaska"], ["AL", "Alabama"], ["AR", "Arkansas"], ["AZ", "Arizona"], 
       ["CA", "California"], ["CO", "Colorado"], ["CT", "Connecticut"], ["DC", "D.C.[11]"], ["DE", "Delaware"], 
       ["FL", "Florida"], ["GA", "Georgia"], ["HI", "Hawaii"],  ["IA", "Iowa"], ["ID", "Idaho"], 
       ["IL", "Illinois"], ["IN", "Indiana"], ["KS", "Kansas"], ["KY", "Kentucky"], ["LA", "Louisiana"], 
       ["MA", "Massachusetts"], ["MD", "Maryland"], ["ME", "Maine"], ["MI", "Michigan"], ["MN", "Minnesota"], 
       ["MO", "Missouri"], ["MS", "Mississippi"], ["MT", "Montana"], ["NC", "North Carolina"], ["ND", "North Dakota"], 
       ["NE", "Nebraska"], ["NH", "New Hampshire"], ["NJ", "New Jersey"], ["NM", "New Mexico"], ["NV", "Nevada"], 
       ["NY", "New York"], ["OH", "Ohio"], ["OK", "Oklahoma"], ["OR", "Oregon"], ["PA", "Pennsylvania"], ["PR", "Puerto Rico"], 
       ["RI", "Rhode Island"], ["SC", "South Carolina"], ["SD", "South Dakota"], ["TN", "Tennessee"], ["TX", "Texas"], 
       ["UT", "Utah"], ["VA", "Virginia"], ["VT", "Vermont"], ["WA", "Washington"], ["WI", "Wisconsin"], 
       ["WV", "West Virginia"], ["WY", "Wyoming"]
      ]
      states.each {|x| State.new("#{x[1]}", "#{x[0]}")}
      @state_names = states
  end

  def zones
    zones = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    zones.each {|x| Zone.new(x)}
    scraped_zones = Zone.all[1..10]

    scraped_zones.each do |x|
    url = URI.parse("https://www.almanac.com/plants/hardiness/#{x.name}")
    response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(response)
    c = 1
    while c < 20
      x.plants << noko_html.css(".field-content").children[c].content
      c += 2
    end
  end

    binding.pry

  end

  def cities

    url = URI.parse("https://en.wikipedia.org/wiki/Hardiness_zone")
    response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(response)
    wiki_table = noko_html.css(".mw-parser-output").children[38]
    table_as_string = wiki_table.content
    city_data = table_as_string.split("\n")
    city_data.reject! {|x| x == "" || x == "City" || x == "State" || x == "Zone"}
    scrape_cities = city_data.each_slice(2).to_h
    
    hard_cities = {
              "Helena, Montana" => 3, "Hayword, Wisconsin" => 3, "Jackson, Wyoming" => 3, "Bismark, North Dakota" => 4,
              "Concord, New Hampshire" => 5, "Cheyenne, Wyoming" => 5, "Frankfort, Kentucky" => 6, "Dover, Delaware" => 7,
              "Trenton, New Jersey" => 7, "Little Rock, Arkansas" => 7, "Jackson, Mississippi" => 8, "Richmond, Virginia" => 7
             }
    cities = scrape_cities.merge(hard_cities)
    cities.each_pair{|key, value| City.new("#{key}", "#{value}")}
  end



end