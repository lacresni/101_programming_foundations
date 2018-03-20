
def fibonacci_last(n)
  first = 1
  last = 1
  3.upto(n) do
    first, last = [last, (first + last) % 10]
  end

  last
end

def init_lookup_table
  arr = []
  0.upto(60) { |i| arr << fibonacci_last(i) }
  arr
end

# fibonacci last digit repeats itself after 60 iterations
# so init a lookup table and use it to return last digit
def fibonacci_last_opt(n)
  fibonacci_arr_digits = init_lookup_table

  fibonacci_arr_digits[n % 60]
end

p fibonacci_last_opt(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_opt(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last_opt(100)       # -> 5
# -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last_opt(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last_opt(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last_opt(123_456_789) # -> 4
