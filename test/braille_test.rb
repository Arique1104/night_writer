require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/braille"
require "./lib/night_writer"
require "./lib/invisible_ink"

class BrailleTest < Minitest::Test
  # def setup
  #   @message = "Hello World"
  #   @braille = Braille.new(@message)
  #
  # end

  def test_it_exists
    assert_instance_of Braille,
    @braille
  end

  def test_it_has_attributes
    @braille.stubs(:dictionary).returns({})
    expected = {}
      assert_equal expected, @braille.dictionary

    assert_equal @message, @braille.message
  end

  def test_it_can_create_braille_initial_hash
  @braille.set_braille_dictionary
    assert_equal "00..00", @braille.dictionary["x"]
    assert_equal ".000..", @braille.dictionary["j"]
    assert_equal "00....", @braille.dictionary["c"]
    assert_equal "......", @braille.dictionary[" "]
    assert_equal "..000.", @braille.dictionary["!"]
    assert_equal "....0.", @braille.dictionary["'"]
    assert_equal "..0...", @braille.dictionary[","]

    assert_equal "....00", @braille.dictionary["-"]

    assert_equal "..00.0", @braille.dictionary["."]
    assert_equal "..0.00", @braille.dictionary["?"]
  end

  def test_it_can_write_one_letter_in_braille
    message = "h"
    braille = Braille.new(message)
    assert_equal [["0.", "00", ".."]], braille.get_braille

  end

  def test_it_can_get_a_whole_word_and_pull_it_into_braille
    message1 = "hello world"
    braille1 = Braille.new(message1)
    assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], braille1.get_braille

    message2 = "hello world\n"
    braille2 = Braille.new(message2)
    assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], braille2.get_braille

    message3 = "hello\nworld\n"
    braille3 = Braille.new(message3)

    assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], braille3.get_braille


  end

  def test_it_can_print_braille_correctly
    expected = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n"

    assert expected, @braille.set_grid
  end

  def test_it_can_start_a_new_line_after_80_dots_have_been_set

    mia_angelou = "If you don't like something, change it. If you can't change it, change your attitude."
    braille4 = Braille.new(mia_angelou)
    expected = ".000..000.0...000.00...0..0..00.0....00.000..00..00000....000.0.00000....0.0....\n0.0....0.0.....0.0.0..00..0.0....0..0..0...000000..0000.....00...000.0..0.0000..\n......000.00....0.0.0.0...0...0.....0.0.0...0.....0.............0.........0..0..\n\n.000..000.0...000.00...0..000.0.00000....0.0....000.0.00000...000.0.0...0..0.0.0\n0.0....0.0.........0..00....00...000.0..0.000.....00...000.0...0.0..00....00000.\n......000.00......0.0.0.........0.........0...........0.......000.000.....0.0...\n\n.00.000...\n00...0.000\n0.00.....0\n\n"
    assert expected, braille4.set_grid

  end

  def test_it_can_create_main_message_initial_array
    message = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    braille = Braille.new(message)
    assert_equal [["0.", "0.", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", "00"],
 ["00", ".0", "0.", "0.", ".0", "..", "00", ".0", "00", "0.", ".0"],
 ["..", "..", "0.", "0.", "0.", "..", ".0", "0.", "0.", "0.", ".."]], braille.main_message

  end

  def test_it_can_create_initial_first_line
    skip
    assert_equal ["0.0.0.0.0....00.0.0.00", "00.00.0..0..00.0000..0", "....0.0.0....00.0.0..."], @braille.initial_first_line

  end

  def test_it_can_dynamically_produce_grid_logic
    skip
    braille = Braille.new("If you don't like something, change it. If you can't change it, change your attitude.")
    # @braille.stubs(:message).returns("If you don't like something, change it. If you can't change it, change your attitude.")
    braille.initial_first_line
    assert_equal " ", braille.grid_logic

  end


end
