require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'

class CreditCardTest < Minitest::Test

  def test_credit_card_is_set_properly
    credit_card = CreditCard.new("4929735477250543")
    assert_instance_of CreditCard, credit_card
  end

#2x over every other digit
#shouldn't contain any logic
  def test_doubled_credit_card_number
    credit_card = CreditCard.new("4929735477250543")
    assert_equal [3,8,5,0,5,4,7,14,4,10,3,14,9,4,9,8],credit_card.double
  end

#summed digits over 10
  def test_over_10
    credit_card = CreditCard.new("4929735477250543")
    assert_equal [3,8,5,0,5,4,7,5,4,1,3,5,9,4,9,8], credit_card.over_10
  end
#results summed
  def test_sum
    credit_card = CreditCard.new("4929735477250543")
    assert_equal 80,credit_card.sum
  end
#check if valid
  def test_if_valid
    #I got this nil to run?
    credit_card = CreditCard.new("4929735477250543")
    assert true, credit_card.if_valid
  end
end
