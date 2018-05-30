class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  def self.today
    self.scrape_houses
  end

  def self.scrape_houses

    houses = []

    # house_1 = self.new
    # house_1.description = "362 Adeline Ave: Awesome Home On Communications"
    # house_1.bedrooms = "3br"
    # house_1.price = "$3200"
    # house_1.size = "1721 sqft"
    # house_1.location = "san jose south"
    #
    # house_2 = self.new
    # house_2.description = "Beautiful Home in Northgate Area, Fremont with great Features!"
    # house_2.bedrooms = "3br"
    # house_2.price = "$3400"
    # house_2.size = "1500 sqft"
    # house_2.location = "fremont / union city / newark"
    #
    # house_3 = self.new
    # house_3.description = "1533 San Gabriel Way: Beautiful Neighborhood!"
    # house_3.bedrooms = "3br"
    # house_3.price = "$3995"
    # house_3.size = "1672 sqft"
    # house_3.location = "willow glen / cambrian"

    houses

  end
end
