# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply(a, b)
  a * b
end

def square(n)
  multiply(n, n)
end

def power_to_n(x, exponent)
  return 1 if exponent == 0

  result = 1
  1.upto(exponent).each { |_| result = multiply(x, result) }

  result
end

p square(5) == 25
p square(-8) == 64

p power_to_n(2, 0) == 1
p power_to_n(2, 3) == 8
p power_to_n(2, 10) == 1024
