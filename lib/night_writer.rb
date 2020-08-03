require "./lib/invisible_ink"

message_file, new_file = ARGV

night_writer = InvisibleInk.new(message_file, new_file)
