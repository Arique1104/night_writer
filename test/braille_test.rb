require "./test/test_helper"

class BrailleTest < Minitest::Test
  def setup
    @message = "Hello World"
    @braille = Braille.new(@message)

  end

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

  end

  def test_it_can_write_one_letter_in_braille
    message = "h"
    braille = Braille.new(message)
    assert_equal [["0.", "00", ".."]], braille.get_braille

  end

  def test_it_can_get_a_whole_word_and_pull_it_into_braille
    message0 = ""
    45.times do
      message0 << "x"
    end
    braille0 = Braille.new(message0)
    expected = [["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"], ["00", "..", "00"]]
    assert_equal expected, braille0.get_braille

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

  def test_it_can_print_up_to_80_dots_wide

    assert_equal "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n", @braille.set_grid

  end

end
