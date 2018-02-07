# Walk-through: Rock Paper Scissors

In this assignment, we'll build a Rock Paper Scissors game. The game flow should go like this:

- the user makes a choice
- the computer makes a choice
- the winner is displayed

#### Things to consider

1. Notice how the `display_results` method calls the `prompt` method. What happens if you move the `display_results`method definition above the `prompt` method definition? Does it still work?

Yes, it is still working

2. Create another method called `test_method` at the very top, before the `prompt` method definition.

Now try invoking the newly created method from just *after* the `prompt` method definition. Does it work?

=> Yes, it is still working

Now try invoking the method again just *before* the `prompt` method definition. Does it work? 

=> No, it does not work

Why is there a different result?

=> This is because prompt method has not been defined when test_method is executed… Ruby is an interpreted language so everything that is after the current exeuted lined is not know by Ruby interpreter.

Your code should look like this:

```ruby
def test_method
  prompt('test message')
end

test_method           # second, try invoking "test_method" here

def prompt(message)
  Kernel.puts("=> #{message}")
end

test_method           # first, try invoking "test_method" here
```

3. How would you use the `display_results` method differently if it returned a string, as opposed to outputting the string directly?

Do something like

```ruby
def display_results()
  'You won!'
end

puts display_results()
```



4. Running Rubocop on this code generates a lot of complaints about the `display_results` method being too complex. Can you think of a way to mitigate? We'll tackle this in an upcoming assignment, but try to think about a possible solution.

```ruby
case choice
when 'rock'
  if (computer_choice == 'paper')
    puts "Computer won!"
  elsif (computer_choice == 'scissors')
    puts "You won!"
  else
  	puts "Tie"
  end
when 'paper'
when 'scissors'
end
```

