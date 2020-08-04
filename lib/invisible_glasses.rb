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



end
