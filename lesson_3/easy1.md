#### Question 1

What would you expect the code below to print out?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

The code will print:

```
1
2
2
3
```

This is because `numbers.uniq` does not *mutate the caller* and returns a new array. Thus, array `numbers` is not modified on line 2.



#### Question 2

Describe the difference between `!` and `?` in Ruby. 



And explain what would happen in the following scenarios:

1. what is `!=` and where should you use it?

`!=` is the *"not equal"* operator. It is used to test if a value is different from another.

2. put `!` before something, like `!user_name`

It is a boolean operator used to return the opposite of its object boolean equivalent.

3. put `!` after something, like `words.uniq!`

Usually, it is used at the end of a method's name to indicate that the method *mutates the caller*. However, this is just a convention.

4. put `?` before something

It can represent a ternary operator:

```ruby
x > 5 ? 'Greater' : 'Smaller'
```

5. put `?` after something

Usually, it is used at the end of a method's name to indicate that the method returns a boolean `true` or `false`. However, this is just a convention.

6. put `!!` before something, like `!!user_name`

`!!<some object>` is used to **turn any object into their boolean equivalent**.



#### Question 3

Replace the word "important" with "urgent" in this string:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

```ruby
advice.gsub!('important', 'urgent')
puts advice
```



#### Question 4

The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

```ruby
numbers = [1, 2, 3, 4, 5]
```

What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

```ruby
numbers.delete_at(1)
numbers.delete(1)
```

**Answer**

* `numbers.delete_at(1)` deletes element at index 1 so `numbers = [1, 3, 4, 5]`
* `numbers.delete(1)` deletes **all elements** having value 1 so `numbers = [2, 3, 4, 5]`



#### Question 5

Programmatically determine if 42 lies between 10 and 100.

```ruby
p (10..100).include?(42)
```



#### Question 6

Starting with the string:

```ruby
famous_words = "seven years ago..."
```

show two different ways to put the expected "Four score and " in front of it.

```ruby
"Four score and " + famous_words
```

or

```ruby
famous_words.prepend("Four score and ")
```

or

```ruby
"Four score and " << famous_words
```



#### Question 7

Fun with gsub:

```ruby
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
```

This gives us a string that looks like a "recursive" method call:

```ruby
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
```

If we take advantage of Ruby's `Kernel#eval` method to have it execute this string as if it *were* a "recursive" method call

```ruby
eval(how_deep)
```

what will be the result?

```ruby
# add_eight(add_eight(add_eight(add_eight(10))))
# add_eight(add_eight(add_eight(18)))
# add_eight(add_eight(26))
# add_eight(34)
42
```



#### Question 8

If we build an array like this:

```ruby
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```

We will end up with this "nested" array:

```ruby
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```

Make this into an un-nested array.

**Solution**

```ruby
flintstones.flatten!
p flintstones
```

```
["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]
```



#### Question 9

Given the hash below

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
```

Turn this into an array containing only two elements: Barney's name and Barney's number

**My Solution**

```ruby
p flintstones.to_a[2]
```

**LaunchSchool solution**

```ruby
flintstones.assoc("Barney")
#=> ["Barney", 2]
```

