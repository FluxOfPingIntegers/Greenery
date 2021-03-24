class ScraperImporter
  attr_accessor :name, :state_names, :zone_names

  def initialize(name)
    @name = name
    self.states
    self.zones
    self.cities
  end

  def states
    url = URI.parse("https://www.infoplease.com/us/postal-information/state-abbreviations-and-state-postal-codes")
    state_response = Net::HTTP.get(url)
    noko_html = Nokogiri::HTML(state_response)
    state_array = []
    c = 0
    while c < 50
      state_array << noko_html.css(".sgmltable").children[1].children[c].content
      c += 1
    end
    c = 28
    state_array.delete_at(8)
    state_array = state_array.map {|x| x.split(" ")}
    while c < 34
      state_array[c][0..1] = state_array[c][0..1].join(" ")
      c += 1
    end
    c = 38
    while c < 41
      state_array[c][0..1] = state_array[c][0..1].join(" ")
      c += 1
    end
    state_array[47][0..1] = state_array[47][0..1].join(" ")
    c = 0
    state_array.each do |x|
      x[1] = x[1][-2..-1]
    end
    state_array << ["D.C.[11]", "DC"]
    state_array << ["Puerto Rico", "PR"]
    state_array << ["Wyoming", "WY"]
      state_array.each {|x| State.new("#{x[0]}", "#{x[1]}")}
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
    hard_plants = ["Basil", "Dill", "Mint", "Hibiscus", "Aloe", "Chili Peppers", "Cucumbers", "Spinach", "Bananas", "Avacados"]
    zone12 = Zone.all[11]
    zone12.plants = hard_plants

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