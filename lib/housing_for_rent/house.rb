class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  @@all = []

  def self.today
    HousingForRent::Scraper.make_house
  end

  def self.new_from_index_page(h)
    self.new(
      get_description(h), get_bedrooms(h), get_price(h), get_size(h), get_location(h)
    )
  end

  def initialize(description=nil, bedrooms=nil, price=nil, size=nil, location=nil)
    @description = description
    @bedrooms = bedrooms
    @price = price
    @size = size
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_description(house)
    "Beautiful house"
  end

  def self.get_bedrooms(house)
    @bedrooms ||= house.css("[class=beds]").text
  end

  def self.get_price(house)
    @price ||= house.css("div.price").text
  end

  def self.get_size(house)
    "1234 sq ft"
  end

  def self.get_location(house)
    @location ||= house.css("[itemprop=name]").text + ", " + house.css("div.cityStZip").text
  end

end
