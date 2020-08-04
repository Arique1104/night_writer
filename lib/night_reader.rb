require "./lib/invisible_glasses"

braille_file, new_file = ARGV

InvisibleGlasses.new(braille_file, new_file)
