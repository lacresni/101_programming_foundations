# Practice Problems: Additional Practice



#### Practice Problem 8

What happens when we modify an array while we are iterating over it? What would be output by this code?

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
```

I had to run code into Irb to fully understand how this works. 

```ruby
1 # => [2, 3, 4]
3 # => [3, 4]
```

After first iteration, 1 has been displayed and numbers = [2, 3, 4]

But what will be the number used for the next iteration? 2 or 3?

In fact, `each` takes the second element in the array when starting round 2 of iteration. So here, `each` takes number 3 (which means number 2 has been skipped…). At the end of the second iteration, 3 has been displayed and numbers = [3, 4]. So this will be the last iteration because there is no more value to iterate through the array at that time... 



What would be output by this code?

```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
```

This is the same principle as above except that `pop` removes the last element of the array.

```ruby
1 # => [1, 2, 3] 
# so next iteration will use second element of the array (here 2)
2 # => [1, 2]
# no more element for a third iteration...
```



**Important**

In both cases we see that **iterators DO NOT work on a copy of the original array** or from stale meta-data (length) about the array. **They operate on the original array** in real time.



#### Practice Problem 10

Given the `munsters` hash below

```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
```

Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

```ruby
{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
```

Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.



### Understand the problem

```
- Input:
  - 'munsters' hash 
- Output:
  - 'munsters' hash
    - each member of the Munster family has an additional "age_group" key
      - key has one of three values describing the age group the family member is 
        - kid (a kid is in the age range 0 - 17)
        - adult (an adult is in the range 18 - 64)
        - senior (a senior is aged 65+)
```

### Tests Cases

```
See 'munsters' returned value
```

### Data Structures

```
- Input:
  - 'munsters' type hash 
- Output:
  - 'munsters' modified hash
```

### Algorithm

```
- Iterate through hash
  - for each name, extract age from hash
    - if age < 18
      - add "age_group" => "kid"
    - else if age < 65
      - add "age_group" => "adult"
    - else
      - add "age_group" => "senior"
```
