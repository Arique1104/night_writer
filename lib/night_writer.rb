input = File.open(ARGV[0]) do |file|
        file.read
end
output = File.open(ARGV[1], 'w') do |file|
        file.write(input)
end

class NightWriter

  def read_file
    File.read(@message_file)
  end




end
