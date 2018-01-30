require "pry"
class CreditCard

  def initialize(card_number)
    @card_number = card_number.split("").collect!{|number| number.to_i}
  end

  def double
    doubled_card_number = @card_number.reverse.collect.with_index do |number, index|
      # if index == [0]
      #   number
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def over_10
    reduced_card_number = double.collect do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

    def sum
      total = over_10.sum
    end

    def if_valid
      if sum % 10 == 0
        puts "The number is valid!"
      else
        puts "The number is invalid!"
      end
      #binding.pry
    end
end



my_card = CreditCard.new("4929735477250543")
puts my_card.sum
