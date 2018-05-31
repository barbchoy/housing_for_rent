#Our CLI Controller

class HousingForRent::CLI

  def call
    list_housing
    menu
    goodbye
  end

  def list_housing
    puts "Housing For Rent"
    @houses = HousingForRent::House.today
    @houses.each.with_index(1) do |house, i|
      puts "#{i}. #{house.description} - #{house.bedrooms} - #{house.size} - #{house.price} - #{house.location}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number you'd like more info on or or type list to see the list or type exit:"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= @houses.size
        puts @houses[input.to_i-1]
      elsif input == "list"
        list_housing
      else
        puts "Not sure what you want. Type list or exit."
      end
    end
  end

  def goodbye
    puts "Bye. See up tomorrow."
  end

end
