class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  def self.today
    #I should return a bunch of houses
    puts <<-DOC.gsub /^\s*/,''
    1. 362 Adeline Ave: Awesome Home On Communications  - 3br - $3200 - 1721 sqft - san jose south
    2. Beautiful Home in Northgate Area, Fremont with great Features! - 3br - $3400 - 1500 sqft - fremont / union city / newark
    3. 1533 San Gabriel Way: Beautiful Neighborhood! - 3br - $3995 - 1672 sqft - willow glen / cambrian
    DOC

    house_1 = self.new
    house_1.description = "362 Adeline Ave: Awesome Home On Communications"
    house_1.bedrooms = "3br"
    house_1.price = "$3200"
    house_1.size = "1721 sqft"
    house_1.location = "san jose south"

    house_2 = self.new
    house_2.description = "Beautiful Home in Northgate Area, Fremont with great Features!"
    house_2.bedrooms = "3br"
    house_2.price = "$3400"
    house_2.size = "1500 sqft"
    house_2.location = "fremont / union city / newark"

    house_3 = self.new
    house_3.description = "1533 San Gabriel Way: Beautiful Neighborhood!"
    house_3.bedrooms = "3br"
    house_3.price = "$3995"
    house_3.size = "1672 sqft"
    house_3.location = "willow glen / cambrian"

    [house_1, house_2, house_3]
  end
end
