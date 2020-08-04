class Letter
 attr_reader  :message,
              :english_dictionary
  def initialize(message)
    @message = message
    @english_dictionary = {}
  end

end
