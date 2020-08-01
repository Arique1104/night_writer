class InvisibleInk
 attr_reader  :message,
              :new_file,
              :braille_dictionary
  def initialize(message_file, new_file)
    @message = message_file
    @new_file = new_file
    @braille_dictionary = {}
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


  def set_hash
  @braille_dictionary = {
        "a" => "0.\n..\n..",
        "b" => "0.\n0.\n..",
        "c" => "00\n..\n..",
        "d" => "00\n.0\n..",
        "e" => "0.\n.0\n..",
        "f" => "00\n0.\n..",
        "g" => "00\n00\n..",
        "h" => "0.\n00\n..",
        "i" => ".0\n0.\n..",
        "j" => ".0\n00\n..",
        "k" => "0.\n..\n0.",
        "l" => "0.\n0.\n0.",
        "m" => "00\n..\n0.",
        "n" => "00\n.0\n0.",
        "o" => "0.\n.0\n0.",
        "p" => "00\n0.\n0.",
        "q" => "00\n00\n0.",
        "r" => "0.\n00\n0.",
        "s" => ".0\n0.\n0.",
        "t" => ".0\n00\n0.",
        "u" => "0.\n..\n00",
        "v" => "0.\n0.\n00",
        "w" => ".0\n00\n.0",
        "x" => "00\n..\n00",
        "y" => "00\n.0\n00",
        "z" => "0.\n.0\n00",
    }
  end

  def find_braille(letter)
    @braille_dictionary[letter]
  end

  def find_letter(braille)
    find_by_braille = @braille_dictionary.invert
    find_by_braille[braille]

  end


end
