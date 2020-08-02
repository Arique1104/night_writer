class Braille
 attr_reader  :dictionary,
              :message
  def initialize(message)
    @message = message
    @dictionary = {}
    set_braille_dictionary
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

  def set_grid(message)
    brailled_message = get_braille(message)
    main_message = []
    3.times do
      main_message << Array.new
    end

    brailled_message.each do |a,b,c|
      main_message[0] << a
      main_message[1] << b
      main_message[2] << c

    end

    main_message.each do |line|
      line << "\n"
    end

    joined_main_message = main_message.map do |line|
        line.join
    end
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
  end

end
