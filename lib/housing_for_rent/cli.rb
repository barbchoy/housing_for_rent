#Our CLI Controller

class HousingForRent::CLI

  def call
    list_housing
    menu
    goodbye
  end

  def list_housing
    puts "Housing For Rent"
    puts <<-DOC.gsub /^\s*/,''
    1. 362 Adeline Ave: Awesome Home On Communications  - 3br - $3200 - 1721 sqft - san jose south
    2. Beautiful Home in Northgate Area, Fremont with great Features! - 3br - $3400 - 1500 sqft - fremont / union city / newark
    3. 1533 San Gabriel Way: Beautiful Neighborhood! - 3br - $3995 - 1672 sqft - willow glen / cambrian
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number you'd like more info on or or type list to see the list or type exit:"
      input = gets.strip
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More info on deal 2..."
      when "list"
        list_housing
      else
        puts "Not sure what you want. Type list or exit."
      end
    end
  end

  def goodbye
    puts "See up tomorrow."
  end

end
