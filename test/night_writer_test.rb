require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new
    assert_instance_of NightWriter, night_writer
  end


  def test_it_can_read_the_file
    night_writer = NightWriter.new
    assert_equal String, night_writer.read_file.class
  end


  def test_it_can_write_a_file
    night_writer = NightWriter.new
    assert_equal " ", night_writer.write_file

  end

end


# @file = File.open("message.txt")
# @file_data = @file.readlines.map(&:chomp)[0].split(/ /)
