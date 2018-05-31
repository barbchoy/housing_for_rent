class HousingForRent::Scraper

  def self.scrape_houses
    #This method is redundant. Remove later.
    houses = []
    doc = Nokogiri::HTML(open("http://www.homefinder.com/zip-code/94568/rentals/sort-by-siteAddedDate-desc/"))
    puts doc
    houses

  end

  def self.get_page
    doc = Nokogiri::HTML(open("http://www.homefinder.com/zip-code/94568/rentals/sort-by-siteAddedDate-desc/"))
  end

  def self.scrape_houses_index
    docs = self.get_page.css("div.resultsBands last")
    puts docs
  end

  def self.make_house
    scrape_houses_index.each do |h|
      HousingForRent::House.new_from_index_page(h)
    end
  end


end
