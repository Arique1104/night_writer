require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/braille"
require "./lib/night_writer"
require "./lib/invisible_ink"

class BrailleTest < Minitest::Test
  def setup
    @braille = Braille.new

  end
  def test_it_exists
    assert_instance_of Braille,
    @braille
  end

  #def test_it_has_attributes
  #end

end
