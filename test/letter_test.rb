require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/letter"

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
  end

end
