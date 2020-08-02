require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/night_writer"
require "./lib/invisible_ink"

class InvisibleInkTest < Minitest::Test
  def setup
    @message_file = "message.txt"
    @new_file = "braille.txt"
    @invisible_ink = InvisibleInk.new(@message_file, @new_file)
  end

  def test_it_exists
    assert_instance_of InvisibleInk, @invisible_ink
  end

  def test_it_has_attributes
    assert_equal @message_file, @invisible_ink.message
    assert_equal @new_file, @invisible_ink.new_file
    expected = Hash
    assert_equal expected, @invisible_ink.braille_dictionary.class
  end

  def test_it_can_read_file
    # skip
    # needs mock
    assert_equal "Hi", @invisible_ink.read_file

  end

  def test_it_can_create_a_new_file
    ###this will need a mocks and stub
    expected = "Hi"
    assert_equal 2, @invisible_ink.write_file
    assert_equal expected, File.read(@invisible_ink.new_file)
  end


  def test_it_can_create_braille_initial_hash
    # skip
    #changing to actual braille dictionary

  @invisible_ink.set_braille_hash

  assert_equal "00..00", @invisible_ink.braille_dictionary["x"]

  assert_equal ".000..", @invisible_ink.braille_dictionary["j"]

  assert_equal "00....", @invisible_ink.braille_dictionary["c"]

  end



end
