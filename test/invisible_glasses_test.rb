require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/invisible_glasses"

class InvisibleGlassesTest < Minitest::Test
  def setup
    @braille_file = "braille.txt"
    @new_file = "original_message.txt"
    @glasses = InvisibleGlasses.new(@braille_file, @new_file)
  end

  def test_it_exists
    assert_instance_of InvisibleGlasses, @glasses
  end

  def test_it_has_attributes
    assert_equal @braille_file, @glasses.braille
  end

end
