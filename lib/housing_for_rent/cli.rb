#Our CLI Controller

class HousingForRent::CLI

  def call
    list_housing
    menu
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
    puts "Enter the number you'd like more info on:"
  end

end
