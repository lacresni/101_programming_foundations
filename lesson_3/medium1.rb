def display_header(message)
  puts
  puts "------------------"
  puts "  #{message}"
  puts "------------------"
end

# ############################################################################
display_header('Question 1')

# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back
# in the days before computers had video screens).
#
# For this practice problem, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
10.times { |n| puts " "*n + "The Flintstones Rock!" }

# ############################################################################
display_header('Question 2')
# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
#
# Why is this and what are two possible ways to fix this?
# => This is because it is not possible to add an integer to a string
#
# Two possible solutions to fix this:
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# ############################################################################
display_header('Question 3')

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(86)  # [1, 2, 43, 86]
p factors(0)
# ############################################################################
display_header('Question 4')

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

test_buffer = [1, 2, 3, 4]
p test_buffer.object_id

test_buffer = rolling_buffer1(test_buffer, 4, 5)
p test_buffer
p test_buffer.object_id

test_buffer2 = [1, 2, 3, 4]
p test_buffer2.object_id

test_buffer2 = rolling_buffer2(test_buffer2, 4, 5)
p test_buffer2
p test_buffer2.object_id

# ############################################################################
display_header('Question 5')

limit = 15
def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# ############################################################################
display_header('Question 6')

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Refactoring proposal: create a method that does not mutate the caller's parameters
def refactor_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string, my_array = refactor_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# ############################################################################
display_header('Question 7')

# What is the output of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# ############################################################################
display_header('Question 8')

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

def not_mess_with_demographics(demo_hash)
  demo_hash = {
    "Herman" => { "age" => 74, "gender" => "other" },
    "Lily" => { "age" => 72, "gender" => "other" },
    "Grandpa" => { "age" => 444, "gender" => "other" },
    "Eddie" => { "age" => 52, "gender" => "other" },
    "Marilyn" => { "age" => 65, "gender" => "other"}
  }

  p demo_hash
end

not_mess_with_demographics(munsters)

p munsters

mess_with_demographics(munsters)

p munsters

# ############################################################################
display_header('Question 9')

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# ############################################################################
display_header('Question 10')

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)
# ############################################################################
# ############################################################################
