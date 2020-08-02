require "./lib/invisible_ink"

message_file, new_file = ARGV

InvisibleInk.new(message_file, new_file)
