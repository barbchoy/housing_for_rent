class HousingForRent::Scraper

  def self.scrape_houses

    houses = []

    doc = Nokogiri::HTML(open("http://www.woot.com/"))
    binding.pry
    puts doc
    houses

  end

end
