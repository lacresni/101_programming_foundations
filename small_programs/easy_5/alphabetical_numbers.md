# Alphabetical Numbers

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

```ruby
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
```

### Understand the problem

```
- Input:
  - An array of integers between 0 and 19
    - Integers are already sorted?
- Output:
  - An array of those Integers sorted based on the English words for each number
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array of integers
- Intermediate:
  - Use an array for conversion
- Output:
  - An array of integers
```

### Algorithm

```
- Convert array of integers to corresponding array of strings with array conversion table
  - Iterate through input array
    - For each element, convert value to string considering value as an index
- Sort array of strings
- Create an empty array
- Iterate through sorted array
  - For each string, find index in conversion table and add it to result array
```



**LaunchSchool Solution**

```ruby
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
```



#### Further Exploration

Why do you think we didn't use `Array#sort_by!` instead of `Enumerable#sort_by`?

=> Because we didn't want to modify original array in the requirement (*"returns **an** Array"*)

For an extra challenge, rewrite your method to use `Enumerable#sort` (unless you already did so).

=> I used `Enumerable#sort` in my solution