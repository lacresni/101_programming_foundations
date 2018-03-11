# - Create an array containing 'n' empty arrays
#
# - First line arr[0] is 'n/2' space then 1 '*'
# - Second line arr[1] is 'n/2 - 1' space then 3 '*'
# - Third line arr[2] is 'n/2 - 2' space then 5 '*'
# - ...
# - Middle line is 0 spaces then 'n' '*'
# - ...
# - Before last line is 'n/2 - 1' space then 3 '*'  => arr[-2] = arr[1]
# - Last line is 'n/2' space then 1 '*'    => arr[-1] = arr[0]
def create_array_of_lines(n)
  arr = []
  n.times { arr << [] }
  arr
end

def fill_line!(arr, line_nb, n)
  # Fill with left spaces
  nb_spaces = (n / 2) - line_nb
  nb_spaces.times { arr[line_nb] << ' ' }

  # add left star
  arr[line_nb] << '*'

  if line_nb > 0
    # Fill with middle spaces
    nb_spaces = 1 + (line_nb - 1) * 2
    nb_spaces.times { arr[line_nb] << ' ' }

    # add right star
    arr[line_nb] << '*'
  end

  arr
end

def display_diamond(arr)
  arr.each { |line| puts line.join.to_s }
end

def diamond(n)
  lines_arr = create_array_of_lines(n)

  # Create upper_lines and middle_line
  nb_upper_lines = n / 2 + 1
  nb_upper_lines.times do |line|
    lines_arr = fill_line!(lines_arr, line, n)
  end

  # Copy upper_lines to lower_lines
  nb_lower_lines = n / 2
  nb_lower_lines.times do |line|
    lines_arr[-1 * (1 + line)] = lines_arr[line]
  end

  display_diamond(lines_arr)
end

puts "----------------------"
puts "Diamond 1"
puts "----------------------"
diamond(1)

puts "----------------------"
puts "Diamond 3"
puts "----------------------"
diamond(3)

puts "----------------------"
puts "Diamond 5"
puts "----------------------"
diamond(5)

puts "----------------------"
puts "Diamond 9"
puts "----------------------"
diamond(9)
