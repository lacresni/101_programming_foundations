# - Line 1 = 'n-1' spaces and 1 '*'
# - Line 2 = 'n-2' spaces and 2 '*'
# ...
# - Line 'n' = '0' spaces and 'n' '*'
#
# Loop n times

def triangle_bottom_right(n)
  for i in (1..n)
    puts "#{' '*(n - i)}#{'*'*i}"
  end
end

def triangle_bottom_left(n)
  for i in (1..n)
    puts "#{'*'*i}#{' '*(n - i)}"
  end
end

def triangle_top_right(n)
  for i in (0..n-1)
    puts "#{' '*i}#{'*'*(n - i)}"
  end
end

def triangle_top_left(n)
  for i in (0..n-1)
    puts "#{'*'*(n - i)}#{' '*i}"
  end
end

triangle_top_left(5)
triangle_top_right(5)
triangle_bottom_right(5)
triangle_bottom_left(5)
