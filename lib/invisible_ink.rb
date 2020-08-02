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
    File.read(@message).chomp
  end

  def write_file
    @count = File.write(@new_file, read_file)
  end

  def print_results
    print "Created '#{@new_file}' containing #{@count} characters"
  end

  def set_braille_hash
    @braille_dictionary["a"] = "0....."
    @braille_dictionary["b"] = "0.0..."
    @braille_dictionary["c"] = "00...."
    @braille_dictionary["d"] = "00.0.."
    @braille_dictionary["e"] = "0..0.."
    @braille_dictionary["f"] = "000..."
    @braille_dictionary["g"] = "0000.."
    @braille_dictionary["h"] = "0.00.."
    @braille_dictionary["i"] = ".00..."
    @braille_dictionary["j"] = ".000.."
    @braille_dictionary["k"] = "0...0."
    @braille_dictionary["l"] = "0.0.0."
    @braille_dictionary["m"] = "00..0."
    @braille_dictionary["n"] = "00.00."
    @braille_dictionary["o"] = "0..00."
    @braille_dictionary["p"] = "000.0."
    @braille_dictionary["q"] = "00000."
    @braille_dictionary["r"] = "0.000."
    @braille_dictionary["s"] = ".00.0."
    @braille_dictionary["t"] = ".0000."
    @braille_dictionary["u"] = "0...00"
    @braille_dictionary["v"] = "0.0.00"
    @braille_dictionary["w"] = ".000.0"
    @braille_dictionary["x"] = "00..00"
    @braille_dictionary["y"] = "00.000"
    @braille_dictionary["z"] = "0..000"

      # require "pry"; binding.pry
  end

end
