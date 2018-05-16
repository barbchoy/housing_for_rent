class HousingForRent::House

  def self.today
    #I should return a bunch of houses
    puts "Housing For Rent"
    puts <<-DOC.gsub /^\s*/,''
    1. 362 Adeline Ave: Awesome Home On Communications  - 3br - $3200 - 1721 sqft - san jose south
    2. Beautiful Home in Northgate Area, Fremont with great Features! - 3br - $3400 - 1500 sqft - fremont / union city / newark
    3. 1533 San Gabriel Way: Beautiful Neighborhood! - 3br - $3995 - 1672 sqft - willow glen / cambrian
    DOC
  end
end
