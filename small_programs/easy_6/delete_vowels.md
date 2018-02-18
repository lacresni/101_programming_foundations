# Delete vowels

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:

```ruby
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
```



### Understand the problem

```
- Input:
  - An array of strings
- Output:
  - An array of the same string values
    - except with the vowels (a, e, i, o, u) removed
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array of strings
- Output:
  - An array of strings
```

### Algorithm

```
- Iterate through the array
  - For each string
    - Delete vowels
```



#### Further Exploration

Ruby has all sorts of String methods that could accomplish this task. How did you end up solving this exercise?

**Solution 1**

```ruby
def remove_vowels(str_arr)
  str_arr.map { |string| string.delete("aeiouAEIOU") }
end
```

**Solution 2**

```ruby
def remove_vowels(str_arr)
  str_arr.map { |string| string.gsub(/[aeiouAEIOU]/, '') }
end
```

