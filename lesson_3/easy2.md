# Practice Problems: Easy 2

#### Question 1

In this hash of people and their age,

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```

see if "Spot" is present.

```ruby
p ages.include?("Spot")
# => false
```



**Bonus:** What are two other hash methods that would work just as well for this solution?

```ruby
ages.include?("Spot")
# => false
ages.key?("Spot")
# => false
ages.member?("Spot")
# => false

ages.fetch("Spot", "unknown...")
# => "unknown..."
```



#### Question 2

Starting with this string:

```ruby
munsters_description = "The Munsters are creepy in a good way."
```

Convert the string in the following ways (code will be executed on original `munsters_description` above):

```
"The munsters are creepy in a good way."
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
```

**Solution**

```ruby
puts munsters_description.capitalize # "The munsters are creepy in a good way."
puts munsters_description.swapcase # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.downcase # "the munsters are creepy in a good way."
puts munsters_description.upcase # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
```



#### Question 3

We have most of the Munster family in our age hash:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
```

add ages for Marilyn and Spot to the existing hash

```ruby
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
```

**Solution**

```ruby
ages.merge!(additional_ages)
p ages
# => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
```



#### Question 4

See if the name "Dino" appears in the string below:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

**Solution**

```ruby
p advice.include?("Dino")
# or
p advice.match("Dino")
```

#### Question 5

Show an easier way to write this array:

```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
```

**Solution**

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```



#### Question 6

How can we add the family pet "Dino" to our usual array:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```

**Solution**

```ruby
flintstones << "Dino"
```



#### Question 7

In the previous practice problem we added Dino to our array like this:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```

We could have used either `Array#concat` or `Array#push` to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)

```ruby
flintstones += %w(Dino Hoppy)
# or
flintstones.concat(%w(Dino Hoppy))
# or
flintstones.push("Dino").push("Hoppy")
```



#### Question 8

Shorten this sentence:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

...remove everything starting from "house".

Review the [String#slice!](http://ruby-doc.org/core-2.2.0/String.html#method-i-slice-21) documentation, and use that method to make the return value `"Few things in life are as important as "`. But leave the `advice` variable as `"house training your pet dinosaur."`.

```ruby
p advice.slice!(advice.index('house'))
# => "Few things in life are as important as "
p advice
# => "house training your pet dinosaur."
```

As a bonus, what happens if you use the [String#slice](http://ruby-doc.org/core-2.2.0/String.html#method-i-slice) method instead?

=> `advice.slice` returns the same string. However, this time, `advice` string is not mutated and printing advice returns the original string

```
"Few things in life are as important as house training your pet dinosaur."
```



#### Question 9

Write a one-liner to count the number of lower-case 't' characters in the following string:

```ruby
statement = "The Flintstones Rock!"
```

**Solution**

```ruby
statement.count('t')
# => 2
```



#### Question 10

Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

```ruby
title = "Flintstone Family Members"
```

**Solution**

```ruby
puts title.center(40)
```

