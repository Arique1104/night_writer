require "./lib/braille"

class InvisibleInk
 attr_reader  :message_file,
              :new_file
  def initialize(message_file, new_file)
    @message_file = message_file
    @new_file = new_file
    night_writer_suite
  end

  def read_file
    File.read(@message_file).chomp
  end

  def write_file
    message = read_file
    braille = Braille.new(message)
    File.write(@new_file, braille.set_grid)
  end

  def print_results
    print "Created '#{@new_file}' containing #{write_file} characters"
  end

  def night_writer_suite
    read_file
    write_file
    print_results
  end

end
