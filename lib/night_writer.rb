class NightWriter

  def initialize
    read_file
    write_file
  end

  def read_file
    @input = File.open(ARGV[0]) do |file|
      file.read
    end
  end

  def write_file
    File.open(ARGV[1], 'w') do |file|
      file.write(@input)
    end
  end


end

night_writer = NightWriter.new
