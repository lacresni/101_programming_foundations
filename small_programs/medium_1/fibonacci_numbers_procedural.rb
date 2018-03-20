# my solution
def my_fibonacci(n)
  n1 = 1
  n2 = 0
  sum = n1 + n2

  3.upto(n) do
    n2 = n1
    n1 = sum
    sum = n1 + n2
  end

  sum
end

# LaunchSchool solution
def fibonacci(nth)
  first = 1
  last = 1
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
