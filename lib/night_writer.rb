class NightWriter
 attr_reader :message_file
  def initialize
    @message_file = "message.txt"
  end

  def open_file
    File.open(@message_file)
  end

end
