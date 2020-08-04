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

end
