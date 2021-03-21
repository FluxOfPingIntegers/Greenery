require_relative './config/environment'
ScraperImporter.new("Start")
Interface.inquiry    
c = 0
while c == 0
  puts "Would you like to make another Selection?  Please type 'y' for yes or 'n' for no."
  selection = gets.chomp
  case selection
    when 'y'
      Interface.inquiry
    when 'n'
      puts "Have a nice day!"
      c += 1
    else
      puts "Invalid selection, please try again!"
  end
end
