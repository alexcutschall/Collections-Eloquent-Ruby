require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/calculator.rb'

class CalculatorTest < Minitest::Test #class needs test in it

#function name needs test
  def test_calculator_is_set_properly
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_total
    calculator = Calculator.new(total = 0)
    assert calculator.total
  end

  def test_add
    calculator = Calculator.new
    assert calculator.respond_to?(:add)
  end

  def test_subtract
    calculator = Calculator.new
    assert calculator.respond_to?(:subtract)
  end

  def test_clear
    calculator = Calculator.new(total = 0)
    assert calculator.respond_to?(:clear)
  end
end
