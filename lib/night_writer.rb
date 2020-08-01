class NightWriter
 attr_reader :message_file
  def initialize
    @message_file = "test_message.txt"
  end

  def read_file
    File.read(@message_file)
  end




end
