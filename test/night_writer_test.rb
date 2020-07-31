require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new
    assert_instance_of NightWriter, night_writer
  end

  def test_it_has_attributes
    night_writer = NightWriter.new

    assert_equal "message.txt", night_writer.message_file
  end

  def test_it_can_open_file
    night_writer = NightWriter.new
    assert_equal File, night_writer.open_file.class
  end

  def test_it_can_read_lines
    night_writer = NightWriter.new
    assert_equal ["Hello World!"], night_writer.read_lines
  end

end


# @file_data = @file.readlines.map(&:chomp)[0].split(/ /)
