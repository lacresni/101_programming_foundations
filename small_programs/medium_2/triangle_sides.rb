def valid_triangle?(sides_arr)
  sorted_sides = sides_arr.sort

  sorted_sides.include?(0) == false &&
    (sorted_sides[0] + sorted_sides[1]) > sorted_sides[2]
end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3]
  return :invalid if valid_triangle?(arr) == false

  triangle = :scalene
  if arr.count(side1) == 3
    triangle = :equilateral
  elsif arr.count(side1) == 2 || arr.count(side2) == 2
    triangle = :isosceles
  end
  triangle
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(2, 3, 3) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
