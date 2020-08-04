require "./lib/letter"

class InvisibleGlasses
 attr_reader  :braille_file,
              :original_message

  def initialize(braille_file, og_file)
    @braille_file = braille_file
    @original_message = og_file
  end

  def read_file
    File.read(@braille_file).split
  end

  def write_file
    message = read_file
    letter = Letter.new(message)
    File.write(@original_message, letter.find_word)

  end

  def print_results
    print "Created '#{@original_message}' containing #{write_file} characters."
  end

end
