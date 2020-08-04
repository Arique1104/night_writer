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
    assert_equal @braille_file, @glasses.braille_file
    assert_equal @new_file, @glasses.original_message
  end

  def test_it_can_read_a_file
    expected = ["0.0.0.0.0....00.0.0.00", "00.00.0..0..00.0000..0", "....0.0.0....00.0.0..."]
    assert_equal expected, @glasses.read_file
  end

  def test_it_can_write
    assert_equal 78, @glasses.write_file

  end

end
