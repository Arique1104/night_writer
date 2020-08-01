class NightWriter
 attr_reader :message_file
  def initialize
    @message_file = "message.txt"
  end

  def open_file
    File.open(@message_file)
  end

  def read_lines
    #every line will be one element of a string within an array
    open_file.readlines.map(&:chomp)
  end



end
