class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  @@all = []

  def self.today
    HousingForRent::Scraper.make_house
  end

  def self.new_from_index_page(h)
    self.new(
      h.css("propertyType").text,
      "test",
      "$100",
      "3bedrooms",
      "Dublin"
    )
  end

  def initialize(description=nil, bedrooms=nil, price=nil, size=nil, location=nil)
    @description = description
    @bedrooms = bedrooms
    @price = price
    @size = size
    @location = location
  end

end
