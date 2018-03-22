def my_triangle(a1, a2, a3)
  angles = [a1, a2, a3]

  return :invalid if angles.include?(0) || angles.reduce(&:+) != 180

  triangle = :acute
  triangle = :right if angles.include?(90)
  triangle = :obtuse if angles.any? { |angle| angle > 90 }

  triangle
end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]

  if angles.include?(0) || angles.reduce(&:+) != 180
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
