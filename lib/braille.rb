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

  def main_message
    #explore cutting here
    result = []
    3.times do
      result << Array.new
    end

    get_braille.map do |a,b,c|
      require "pry"; binding.pry
      result[0] << a
      result[1] << b
      result[2] << c
    end
    result
  end

  def initial_first_line
    main_message.map do |line|
      line.join
    end
  end

  def grid_logic
    arrays_needed = initial_first_line[0].length / 80.0
    main_array = []
    arrays_needed.ceil.times do
      main_array << Array.new
    end
    require "pry"; binding.pry
  end

  def set_grid

    if initial_first_line[0].length < 80

      second_line = []
      initial_first_line.map do |line|
        second_line << line[80..-1]
        line.slice!(80..-1)
      end
      final_result = initial_first_line.join("\n") + "\n" + second_line.join("\n")
      final_result
    elsif initial_first_line[0].length >= 79 || initial_first_line[0].length <= 159
      second_line = []
      third_line = []
      initial_first_line.map do |line|
        second_line << line[80..-1]
        line.slice!(80..-1)
      end
      second_line.map do |line|
        third_line << line[80..-1]
        line.slice!(80..-1)
      end
      final_result = initial_first_line.join("\n") + "\n" + second_line.join("\n") + "\n" + third_line.join("\n")
      final_result
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
    @dictionary["!"] = "..000."
    @dictionary["'"] = "....0."
    @dictionary[","] = "..0..."
    @dictionary["-"] = "....00"
    @dictionary["."] = "..00.0"
    @dictionary["?"] = "..0.00"

  end

end
