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

  def test_it_has_attributes
    @braille.stubs(:dictionary).returns({})
    expected = {}
      assert_equal expected, @braille.dictionary
  end

  def test_it_can_create_braille_initial_hash
  @braille.set_braille_dictionary
    assert_equal "00..00", @braille.dictionary["x"]
    assert_equal ".000..", @braille.dictionary["j"]
    assert_equal "00....", @braille.dictionary["c"]
    assert_equal "......", @braille.dictionary[" "]

  end

  def test_it_can_write_one_letter_in_braille
    assert_equal [["0.", "00", ".."]], @braille.get_braille("h")

  end

  def test_it_can_get_a_whole_word_and_pull_it_into_braille

    assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], @braille.get_braille("hello world")

    assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], @braille.get_braille("hello world\n")

      assert_equal [["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."],["0.", "0.", "0."],["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."],["00", ".0", ".."]], @braille.get_braille("hello\n world\n")


  end

end
