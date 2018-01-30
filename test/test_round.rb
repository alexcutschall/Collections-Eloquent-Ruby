require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/test.rb'

class RoundTest < Minitest::Test
  def test_round_exists
    round = Round.new(deck)
    assert round, Round.new(deck)
  end

  def test_round_deck
    round = Round.new([card_1, card_2])
    assert [card_1, card_2], round.deck
  end

  def test_round_guesses
    round = Round.new(deck)
    assert [], round.guesses
  end

  def test_round_current_card
    #don't know what the current card should be?
    round = Round.new([card1])
    assert card1, round.current_card
  end

  def test_round_record_guess(number)
    round = Round.new(deck)
    assert 2, round.record_guess("2")
  end

  def test_guesses_count
    round = Round.new(deck)
    round.record_guess("2")
    assert 2, guesses.count
  end

  def test_round_guess_feedback
    round = Round.new(deck)
    assert "Incorrect", round.guesses.last.feedback
  end

  def test_number_correct
    round = Round.new(deck)
    assert 1, round.number_correct
  end

  def test_percent_correct
    round = Round.new(deck)
    assert 50, round.percent_correct
  end
end
