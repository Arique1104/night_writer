require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/night_writer"
require "./lib/invisible_ink"
require "./lib/braille"


class InvisibleInkTest < Minitest::Test
  def setup
    @message_file = "message.txt"
    @new_file = "braille.txt"
    @invisible_ink = InvisibleInk.new(@message_file, @new_file)
    @invisible_ink.stubs(:read_file).returns("Hi")
  end

  def test_it_exists
    assert_instance_of InvisibleInk, @invisible_ink
  end

  def test_it_has_attributes
    assert_equal @message_file, @invisible_ink.message_file
    assert_equal @new_file, @invisible_ink.new_file

  end

  def test_it_can_read_file
    assert_equal "Hi", @invisible_ink.read_file

  end

  def test_it_can_create_a_new_file
    assert_equal 15, @invisible_ink.write_file
    assert_equal "0..0\n000.\n....\n", File.read(@invisible_ink.new_file)
  end

end
