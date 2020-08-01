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
    ###this will need a mocks and stub
    assert_equal 13, @invisible_ink.write_file
  end

# THIS TEST NEEDS A MOCKS AND STUB
  # def test_it_can_print_results
  #   @invisible_ink.write_file
  #   assert_equal "Created 'braille.txt' containing 13 characters", @invisible_ink.print_results
  #
  # end


  def test_it_can_create_braille_initial_hash
    # skip
    #changing to actual braille dictionary
    expected1 = {}
    assert_equal expected1, @invisible_ink.braille_dictionary

    expected2 = {
          "a" => "0.\n..\n..",
          "b" => "0.\n0.\n..",
          "c" => "00\n..\n..",
          "d" => "00\n.0\n..",
          "e" => "0.\n.0\n..",
          "f" => "00\n0.\n..",
          "g" => "00\n00\n..",
          "h" => "0.\n00\n..",
          "i" => ".0\n0.\n..",
          "j" => ".0\n00\n..",
          "k" => "0.\n..\n0.",
          "l" => "0.\n0.\n0.",
          "m" => "00\n..\n0.",
          "n" => "00\n.0\n0.",
          "o" => "0.\n.0\n0.",
          "p" => "00\n0.\n0.",
          "q" => "00\n00\n0.",
          "r" => "0.\n00\n0.",
          "s" => ".0\n0.\n0.",
          "t" => ".0\n00\n0.",
          "u" => "0.\n..\n00",
          "v" => "0.\n0.\n00",
          "w" => ".0\n00\n.0",
          "x" => "00\n..\n00",
          "y" => "00\n.0\n00",
          "z" => "0.\n.0\n00",
      }
      @invisible_ink.set_hash
    assert_equal expected2, @invisible_ink.braille_dictionary

  end

  def test_it_can_find_a_braille_equivalent_for_each_letter
    @invisible_ink.set_hash
    assert_equal "0.\n..\n..", @invisible_ink.find_braille("a")

  end

  def test_it_can_find_letter
    @invisible_ink.set_hash
    assert_equal "a", @invisible_ink.find_letter("0.\n..\n..")

  end

  def test_it_can_create_braille_grid
    #40 characters across means only 20 characters

    expected = [] #Letters for
    assert_equal expected, @invisible_ink.braille_grid
  end

end
