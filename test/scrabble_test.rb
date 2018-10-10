require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter

    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 8, Scrabble.new.score("hello")
    assert_equal 9, Scrabble.new.score("world")
  end

  def test_it_can_score_a_word_with_mults
    assert_equal 16, Scrabble.new.score("hello",2)
    assert_equal 27, Scrabble.new.score("world",3)
  end
end
