require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/night_writer"
require "./lib/invisible_ink"

class InvisibleInkTest < Minitest::Test

  def test_it_exists
    message_file = "message.txt"
    new_file = "braille.txt"
    invisible_ink = InvisibleInk.new(message_file, new_file)
    assert_instance_of InvisibleInk, invisible_ink
  end

  #def test_it_has_attributes
  #end

end
