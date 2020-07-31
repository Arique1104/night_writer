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
    message_file = File.open("message.txt")
    assert_equal message_file, night_writer.message_file
  end

end


# @file = File.open("message.txt")
# @file_data = @file.readlines.map(&:chomp)[0].split(/ /)
