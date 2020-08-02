class InvisibleInk
 attr_reader  :message,
              :new_file
  def initialize(message_file, new_file)
    @message = message_file
    @new_file = new_file
  end

  def read_file
    File.read(@message).chomp
  end

  def write_file
    File.write(@new_file, read_file)
  end

  def print_results
    print "Created '#{@new_file}' containing #{write_file} characters"
  end

end
