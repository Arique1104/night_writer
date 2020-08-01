class InvisibleInk
 attr_reader  :message,
              :new_file
  def initialize(message_file, new_file)
    @message = message_file
    @new_file = new_file
  end

  def read_file
    File.read(@message)
  end

  def write_file
    @count = File.write(@new_file, read_file)
  end

  def print_results
    print "Created '#{@new_file}' containing #{@count} characters"
  end

  def letters_and_symbols
    keys = ("a".."z").to_a << ["!", "'", ",", "-", "?"]
    keys.flatten
  end

  def braille(letter)

    # require "pry"; binding.pry
  end


end
