# Practice Problems: Medium 1

#### Question 1

Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

```
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
```

**My Solution**

```ruby
10.times { |n| puts " "*n + "The Flintstones Rock!" }
```



#### Question 2

The result of the following statement will be an error:

```ruby
puts "the value of 40 + 2 is " + (40 + 2)
```

Why is this and what are two possible ways to fix this?

=> This is because it is not possible to add an integer to a string

Two possible solutions to fix this:

```ruby
puts "the value of 40 + 2 is " + (40 + 2).to_s  
puts "the value of 40 + 2 is #{40 + 2}"
```



#### Question 3

Alan wrote the following method, which was intended to show all of the factors of the input number:

```ruby
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
```

Alyssa noticed that this will fail if the input is `0`, or a negative number, and asked Alan to change the loop. How can you make this work without using `begin`/`end`/`until`? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

=> Use a `while` loop

```ruby
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
```

#### Bonus 1

What is the purpose of the `number % dividend == 0` ?

=> When the remainder is 0, it means that `dividend` is a multiple of `number`

#### Bonus 2

What is the purpose of the second-to-last line in the method (the `divisors` before the method's `end`)?

=> This is the return value of the method. It returns the array containing all of the factors of the input number.



#### Question 4

Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like `<<` or `+` for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

```ruby
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
```

**rolling_buffer1**

This method mutates the caller and modifies `buffer` parameter passed as an argument to the method. `buffer` is the method's returned value.



**rolling_buffer2**

This method creates a **new array** on line 8 by concatenating the `input_array` array and the `new_element`. 

This new array is returned by the method on line 10.

So each time, this method is called, a new array is created. So, this method does not *mutate the caller* because it does not modify the caller's input argument.

However, this is not very efficient and does not fully correspond to a *real* rolling buffer… 



#### Question 5

Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

```ruby
limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
```

How would you fix this so that it works?

=> Methods are self-contained with respect to local variables which means that local variable `limit`, initialized on line 1 and referencing integer 15, is not accessible within the `fib` method scope.

It has to be passed as a parameter (or it could be defined in the method as it seems that it is not used elsewhere...)



#### Question 6

In an earlier practice problem we saw that depending on variables to be modified by called methods can be tricky:

```ruby
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
```

We learned that whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?

=> In `tricky_method`, string passed as an argument is not mutated because `a_string_param` is reassigned to a new string on line 2 (use of `String#+=` method that is non mutating). However, array passed as an argument is mutated because `String#<<` concatenation operator is used on line 3.

So the tricky part of this method is that `my_string` passed in as the first parameter is not modified whereas the second parameter `my_array` is modified...

**My proposal**

We could refactor this problem by creating two methods instead of one:

```ruby
def update(a_string_param)
  a_string_param += "rutabaga"
end

def update!(an_array_param)
  an_array_param << "rutabaga"
end   
```

**LaunchSchool proposal**

Modify `tricky_method` so that **operation performed on both parameters is consistent** (either mutating or non mutating but not a mixture of both...)

In the example, they chose to create a function that does not mutate the caller's elements.



#### Question 7

What is the output of the following code?

```ruby
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
```

The output is :

```
34
```

This is because integers are *immutable* objects. Reassignment method `Integer#+=` used on line 4 creates a new integer having value 50. So `some_number` is bound to a new object but `answer` is still bound to integer object 42.

That's why 34 is printed on line 9.



#### Question 8

One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

```ruby
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
```

After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

```ruby
mess_with_demographics(munsters)
```

Did the family's data get ransacked? Why or why not?

=> Yes, the family data is ransacked because Spot used the `Hash#[]=` **indexed assignment method** that is a **mutating** method.



#### Question 9

Method calls can take expressions as arguments. Suppose we define a function called `rps` as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

```ruby
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
```

What is the result of the following call?

```ruby
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
```

```ruby
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
=> puts rps(rps("paper", "rock"), "rock")
=> puts rps("paper", "rock")
=> "paper"
```



#### Question 10

Consider these two simple methods:

```ruby
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
```

What would be the return value of the following method invocation?

```ruby
bar(foo)
```

`foo` method always return `"yes"`

So `bar("yes")` returns `"no"`