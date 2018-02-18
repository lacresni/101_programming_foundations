# - Compute string size (str_size)
# - Format first line
#   -  "+" + '-'*(str_size + 2) + "+"
# - Format second line
#   -  "|" + ' '*(str_size + 2) + "|"
# - Format third line
#   -  "| " + string + " |"
# - Display line 1-5
MAX_STR_SIZE = 76

def print_message(string, max_line_size)
  start_index = 0
  while start_index < string.size
    line_size = string.size - start_index
    size = line_size <= MAX_STR_SIZE ? line_size : MAX_STR_SIZE

    nb_trailing_spaces = max_line_size > size ? MAX_STR_SIZE - size + 1 : 1

    msg = string[start_index..(start_index + size - 1)]
    puts "| " + msg + " " * nb_trailing_spaces + "|"

    start_index += size
  end
end

def print_in_box(string)
  max_line_size = string.size > MAX_STR_SIZE ? MAX_STR_SIZE : string.size

  start_stop_line = "+" + '-' * (max_line_size + 2) + "+"
  empty_line = "|" + ' ' * (max_line_size + 2) + "|"

  puts start_stop_line
  puts empty_line
  print_message(string, max_line_size)
  puts empty_line
  puts start_stop_line
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')

str = "To boldly go where no one has gone before. \
To boldly go where no one has gone before."
print_in_box(str)
