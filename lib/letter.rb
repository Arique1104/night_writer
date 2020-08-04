class Letter
 attr_reader  :message,
              :english_dictionary
  def initialize(message)
    @message = message
    @english_dictionary = {}
    set_english_dictionary
  end

  def set_english_dictionary
    @english_dictionary["0....."] = "a"
    @english_dictionary["0.0..."] = "b"
    @english_dictionary["00...."] = "c"
    @english_dictionary["00.0.."] = "d"
    @english_dictionary["0..0.."] = "e"
    @english_dictionary["000..."] = "f"
    @english_dictionary["0000.."] = "g"
    @english_dictionary["0.00.."] = "h"
    @english_dictionary[".00..."] = "i"
    @english_dictionary[".000.."] = "j"
    @english_dictionary["0...0."] = "k"
    @english_dictionary["0.0.0."] = "l"
    @english_dictionary["00..0."] = "m"
    @english_dictionary["00.00."] = "n"
    @english_dictionary["0..00."] = "o"
    @english_dictionary["000.0."] = "p"
    @english_dictionary["00000."] = "q"
    @english_dictionary["0.000."] = "r"
    @english_dictionary[".00.0."] = "s"
    @english_dictionary[".0000."] = "t"
    @english_dictionary["0...00"] = "u"
    @english_dictionary["0.0.00"] = "v"
    @english_dictionary[".000.0"] = "w"
    @english_dictionary["00..00"] = "x"
    @english_dictionary["00.000"] = "y"
    @english_dictionary["0..000"] = "z"
    @english_dictionary["......"] = " "
    @english_dictionary["..000."] = "!"
    @english_dictionary["....0."] = "'"
    @english_dictionary["..0..."] = ","
    @english_dictionary["....00"] = "-"
    @english_dictionary["..00.0"] = "."
    @english_dictionary["..0.00"] = "?"
  end

end
