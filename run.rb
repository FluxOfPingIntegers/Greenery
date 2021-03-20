require_relative './config/environment'
ScraperImporter.new("Start")

puts "Please select what state your garden will be in using the states two letter abbreviation capitalized."
puts "You can also select Washington D.C. as 'DC', or the country of Peurto Rico as 'PR'."
state = gets.chomp
abb_array = State.all.map {|x| x.abb}
while abb_array.none? {|x| x == state}  
    puts "Invalid selection.  Select the state your garden will reside using its two capital letter abbreviation."
    state = gets.chomp
end
state = State.all.find {|x| x.abb == state}
prompt = TTY::Prompt.new
selection = prompt.select("Using the arrow keys, please select which city is closest to where your garden will reside and press enter.",
     state.cities.map{|x| x.name})
selection = state.cities.find {|x| x.name == selection }
puts "The city you have selected is in the USDA hardiness zone of #{selection.zone.name}."
puts "Please consult the internet for the month to plant the following plants near #{selection.name}."
c = 1
while c < 11
    puts "#{c}.  #{selection.zone.plants[c-1]}."
    c += 1
end     
