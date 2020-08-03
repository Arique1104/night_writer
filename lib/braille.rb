class Braille
 attr_reader  :dictionary,
              :message
  def initialize(message)
    @dictionary = {}
    set_braille_dictionary
    @message = message
    set_grid
  end

  def get_braille
    initial_result = []
    array_of_letters = @message.downcase.gsub(/[\r\n]/, " ").split("")
    array_of_letters.pop if array_of_letters.last == " "

    array_of_letters.each do |letter|
      initial_result << @dictionary[letter]
    end
    final_result = []
    initial_result.each do |braille_string|
      final_result << braille_string.scan(/../)
    end
    final_result
  end

  def set_grid
    results = Hash.new
    whole_chunk = get_braille
    total_lines = (whole_chunk.count / 40.0).ceil
    total_keys = (1..total_lines).to_a
    total_lines.times do
      forty_chunk = whole_chunk[0..39]
      transposed_forty = forty_chunk.transpose
      joined_forty = transposed_forty.map {|third| third.join + "\n"}
      results[total_keys[0]] = joined_forty
      whole_chunk.slice!(0..39)
      total_keys.slice!(0)
    end
    results
  end

  def set_braille_dictionary
    @dictionary["a"] = "0....."
    @dictionary["b"] = "0.0..."
    @dictionary["c"] = "00...."
    @dictionary["d"] = "00.0.."
    @dictionary["e"] = "0..0.."
    @dictionary["f"] = "000..."
    @dictionary["g"] = "0000.."
    @dictionary["h"] = "0.00.."
    @dictionary["i"] = ".00..."
    @dictionary["j"] = ".000.."
    @dictionary["k"] = "0...0."
    @dictionary["l"] = "0.0.0."
    @dictionary["m"] = "00..0."
    @dictionary["n"] = "00.00."
    @dictionary["o"] = "0..00."
    @dictionary["p"] = "000.0."
    @dictionary["q"] = "00000."
    @dictionary["r"] = "0.000."
    @dictionary["s"] = ".00.0."
    @dictionary["t"] = ".0000."
    @dictionary["u"] = "0...00"
    @dictionary["v"] = "0.0.00"
    @dictionary["w"] = ".000.0"
    @dictionary["x"] = "00..00"
    @dictionary["y"] = "00.000"
    @dictionary["z"] = "0..000"
    @dictionary[" "] = "......"
    @dictionary["!"] = "..000."
    @dictionary["'"] = "....0."
    @dictionary[","] = "..0..."
    @dictionary["-"] = "....00"
    @dictionary["."] = "..00.0"
    @dictionary["?"] = "..0.00"

  end

end
