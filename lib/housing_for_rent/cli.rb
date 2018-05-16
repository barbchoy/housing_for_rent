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
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number you'd like more info on or or type list to see the list or type exit:"
      input = gets.strip
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More info on deal 2..."
      when "list"
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
