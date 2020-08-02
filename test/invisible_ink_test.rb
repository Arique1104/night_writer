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
    assert_equal "Hi", @invisible_ink.read_file

  end

  def test_it_can_create_a_new_file
    ###this will need a mocks and stub
    expected = "Hi"
    assert_equal 3, @invisible_ink.write_file
    assert_equal expected, File.read(@invisible_ink.new_file)
  end

  def test_test_it_can_write_in_braille
    expected = [["0.","00", ".."],[".0","0.", ".."]]
    assert_equal 3, @invisible_ink.write_file
    assert_equal expected, File.read(@invisible_ink.new_file.complete_braille)
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
          "a" => ["0.","..", ".."],
          "b" => ["0.","0.", ".."],
          "c" => ["00","..", ".."],
          "d" => ["00",".0", ".."],
          "e" => ["0.",".0", ".."],
          "f" => ["00","0.", ".."],
          "g" => ["00","00", ".."],
          "h" => ["0.","00", ".."],
          "i" => [".0","0.", ".."],
          "j" => [".0","00", ".."],
          "k" => ["0.","..", "0."],
          "l" => ["0.","0.", "0."],
          "m" => ["00","..", "0."],
          "n" => ["00",".0", "0."],
          "o" => ["0.",".0", "0."],
          "p" => ["00","0.", "0."],
          "q" => ["00","00", "0."],
          "r" => ["0.","00", "0."],
          "s" => [".0","0.", "0."],
          "t" => [".0","00", "0."],
          "u" => ["0.","..", "00"],
          "v" => ["0.","0.", "00"],
          "w" => [".0","00", ".0"],
          "x" => ["00","..", "00"],
          "y" => ["00",".0", "00"],
          "z" => ["0.",".0", "00"],
      }
      @invisible_ink.set_hash
    assert_equal expected2, @invisible_ink.braille_dictionary

  end

  def test_it_can_find_a_braille_equivalent_for_each_letter
    @invisible_ink.set_hash
    assert_equal ["0.","..", ".."], @invisible_ink.find_braille("a")

  end

  def test_it_can_find_letter
    @invisible_ink.set_hash
    assert_equal "a", @invisible_ink.find_letter(["0.","..", ".."])

  end

  def test_it_can_create_braille_grid
    skip
    #40 characters across means only 20 characters

    expected = [] #Letters for
    assert_equal expected, @invisible_ink.braille_grid
  end

end
