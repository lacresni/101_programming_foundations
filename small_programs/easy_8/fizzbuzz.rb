# - Create a range from first integer argument to second integer argument
# - Iterate through the range
#   - For each element in the range
#     - Check if divisible by 15
#       - If yes, print out "FizzBuzz"
#     - Else check if divisible by 5
#       - If yes, print out "Buzz"
#     - Else check if divisible by 3
#       - If yes, print out "Fizz"
#     - Else print out element

def fizzbuzz(start_int, end_int)
  arr_words = []
  (start_int..end_int).each do |number|
    arr_words << if number % 15 == 0
                   "FizzBuzz"
                 elsif number % 5 == 0
                   "Buzz"
                 elsif number % 3 == 0
                   "Fizz"
                 else
                   number
                 end
  end
  puts arr_words.join(', ')
end

fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
