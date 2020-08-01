class InvisibleInk
 attr_reader  :message,
              :new_file
  def initialize(message_file, new_file)
    @message = message_file
    @new_file = new_file
  end

  def read_file
    File.read(@message)
  end

  def write_file
    File.write(@new_file, 'w')
  end


end
