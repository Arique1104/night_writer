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
  end

  def test_it_can_read_file
    assert_equal "Hello World!\n", @invisible_ink.read_file

  end

  def test_it_can_create_a_new_file
    assert_equal 13, @invisible_ink.write_file
  end

# THIS TEST NEEDS A MOCKS AND STUB
  # def test_it_can_print_results
  #   @invisible_ink.write_file
  #   assert_equal "Created 'braille.txt' containing 13 characters", @invisible_ink.print_results
  #
  # end
  def test_it_can_create_a_braille_equivalent_for_each_letter
    skip
    assert_equal " ", @invisible_ink.braille("a")

  end

  def test_it_can_create_letters_and_symbols_array

    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "!", "'", ",", "-", "?"], @invisible_ink.letters_and_symbols_array

  end
end
