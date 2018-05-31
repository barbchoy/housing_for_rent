class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  def self.today
    self.scrape_houses
  end

  def self.scrape_houses

    houses = []

    doc = Nokogiri::HTML(open("https://sfbay.craigslist.org/d/apts-housing-for-rent/search/apa"))

    puts doc
    houses

  end


end
