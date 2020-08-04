require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/letter"
require "./lib/braille"


class LetterTest < Minitest::Test

  def setup
    @message = "Hello World"
    @letter = Letter.new(@message)
  end

  def test_it_exists
    assert_instance_of Letter, @letter
  end

  def test_it_has_attributes
    assert_equal @message, @letter.message
    @letter.stubs(:english_dictionary).returns({})
    expected = {}
    assert_equal expected, @letter.english_dictionary
  end

  def test_it_can_set_english_dictionary
     assert_equal "?", @letter.set_english_dictionary

  end

  def test_it_can_find_english_letter

    assert_equal "k", @letter.find_letter("0...0.")

  end

  def test_it_can_find_words
    message = ["0.0.0.0.0....00.0.0.00", "00.00.0..0..00.0000..0", "....0.0.0....00.0.0..."]
    letter = Letter.new(message)
    assert_equal "hello world", letter.find_word
  end

end
