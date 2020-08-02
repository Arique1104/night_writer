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
        "a" => ["0.","..", ".."],
        "b" => ["0.","0.", ".."],
        "c" => ["00","..", ".."],
        "d" => ["00",".0", ".."],
        "e" => ["0.",".0", ".."],
        "f" => ["00","0.", ".."],
        "g" => ["00","00", ".."],
        "h" => ["0.","00", ".."],
        "i" => [".0","0.", ".."],
        "j" => [".0","00", ".."],
        "k" => ["0.","..", "0."],
        "l" => ["0.","0.", "0."],
        "m" => ["00","..", "0."],
        "n" => ["00",".0", "0."],
        "o" => ["0.",".0", "0."],
        "p" => ["00","0.", "0."],
        "q" => ["00","00", "0."],
        "r" => ["0.","00", "0."],
        "s" => [".0","0.", "0."],
        "t" => [".0","00", "0."],
        "u" => ["0.","..", "00"],
        "v" => ["0.","0.", "00"],
        "w" => [".0","00", ".0"],
        "x" => ["00","..", "00"],
        "y" => ["00",".0", "00"],
        "z" => ["0.",".0", "00"],
    }
  end

  def find_braille(letter)
    @braille_dictionary[letter]
  end

  def find_letter(braille)
    find_by_braille = @braille_dictionary.invert
    find_by_braille[braille]

  end

  def braille_grid
  a_array = []
  b_array = []
  c_array = []
z = [["0.",".0", "00"], ["0.",".0", "00"]]
  z.each do |a,b,c|
    until a_array.count == @count || c_array.count == 161
    a << a
    b << b
    c << c
    require "pry"; binding.pry
    end
  end

    #20 across, infinity below
  end


end
