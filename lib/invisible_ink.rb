require "./lib/braille"

class InvisibleInk
 attr_reader  :message_file,
              :new_file
  def initialize(message_file, new_file)
    @message_file = message_file
    @new_file = new_file
  end

  def read_file
    File.read(@message_file).chomp
  end

  def write_file
    message = read_file
    braille = Braille.new(message)
    new_message = braille.set_grid # do I need this?
    File.write(@new_file, new_message)
  end

  def print_results
    print "Created '#{@new_file}' containing #{write_file} characters"
  end

end
