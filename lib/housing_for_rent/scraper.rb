class HousingForRent::Scraper

  # def self.scrape_houses
  #   #This method is redundant. Remove later.
  #   houses = []
  #   doc = Nokogiri::HTML(open("http://www.homefinder.com/zip-code/94568/rentals/sort-by-siteAddedDate-desc/"))
  #   puts doc
  #   houses
  #
  # end

  def self.get_page
    doc = Nokogiri::HTML(open("http://www.homefinder.com/zip-code/94568/rentals/sort-by-siteAddedDate-desc/"))
  end

  def self.scrape_houses_index
    self.get_page.css("section").css("#leftColumn").css(".resultsBands")
  end

  def self.make_house
    houses = []
    scrape_houses_index.each do |h|
      price = h.css(".price").text
      bedroom = h.css(".beds").text
      location = h.css(".cityStZip").text
      houses << HousingForRent::House.new(nil, bedroom, price, nil, location)
      puts h
      puts " "
      # houses << HousingForRent::House.new_from_index_page(h)
    end
    houses
  end


end
