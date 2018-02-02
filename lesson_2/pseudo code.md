For example, write out pseudo-code (both casual and formal) that does the following:

### A method that returns the sum of two integers

Casual pseudo code

```
Given two integers.

Compute the sum of the two integers
Return the sum
```

Formal pseudo code

```
START

# Given two integers.

SET sum = sum of two integers

PRINT sum

END
```



### A method that takes an array of strings, and returns a string that is all those strings concatenated together

Casual pseudo code

```
Given an array of strings

Create an empty string
Iterate through the array one by one
 - concatenate the current value to the new string
 
 After iterating through the array, return the string
```

Formal pseudo code

```
START

# Given an array of strings

SET str_concat = ""
SET iterator = 0

WHILE iterator < length of array
  SET str_concat << current string
  iterator = iterator + 1

PRINT str_concat

END
```



### A method that takes an array of integers, and returns a new array with every other element

Casual pseudo code

```
Given an array of integers

Create a new empty array
Iterate through the array one by one
  - Push element in new array
  
After iterating through the array, return new array
```

Formal pseudo code

```
START

# Given an array of integers

SET new_arr = []
SET iterator = 0

WHILE iterator < size of array of integers
  SET new_arr[iterator] = value of array of integers at index "iterator"

PRINT new_arr

END
```


