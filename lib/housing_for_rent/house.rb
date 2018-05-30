class HousingForRent::House

  attr_accessor :description, :bedrooms, :price, :size, :location

  def self.today
    self.scrape_houses
  end

  def self.scrape_houses

    houses = []

    doc = Nokogiri::HTML(open("http://www.woot.com/"))
    binding.pry
    puts doc
    houses

  end
end
