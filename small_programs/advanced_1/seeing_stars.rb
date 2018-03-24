def init_array(n)
  Array.new(n) { Array.new(n, ' ') }
end

def horizontal_line!(n, arr)
  arr[n / 2].map! { |_| '*' }
end

def vertical_line!(n, arr)
  arr.each { |line| line[n / 2] = '*' }
end

def first_diagonal!(n, arr)
  n.times { |index| arr[index][index] = '*' }
end

def second_diagonal!(n, arr)
  n.times { |index| arr[n - index - 1][index] = '*' }
end

def display_star(arr)
  arr.each { |line| puts line.join }
end

def star(n)
  # Create n*n array with spaces as default elements
  arr = init_array(n)

  horizontal_line!(n, arr)
  vertical_line!(n, arr)
  first_diagonal!(n, arr)
  second_diagonal!(n, arr)

  display_star(arr)
end

star(7)
puts
star(15)
