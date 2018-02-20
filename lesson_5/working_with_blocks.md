# Working with Blocks

#### Example 1

Take a moment to digest the following example:

```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]
```

So what specific pieces of information are we interested in keeping track of? When evaluating code like this, ask the following questions:

- What is the type of action being performed (method call, block, conditional, etc..)?
- What is the object that action is being performed on?
- What is the side-effect of that action (e.g. output or destructive action)?
- What is the return value of that action?
- Is the return value used by whatever instigated the action?

We can take these pieces of information and set them out in a tabular format:

| Line | Action                | Object                          | Side Effect                                 | Return Value                    | Is Return Value Used?                        |
| ---- | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | -------------------------------------------- |
| 1    | method call (`each`)  | The outer array                 | None                                        | The calling object              | No, but shown on line 6                      |
| 1-3  | block execution       | Each sub-array                  | None                                        | `nil`                           | No                                           |
| 2    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used by `puts`                          |
| 2    | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an Integer | `nil`                           | Yes, used to determine return value of block |

#### Example 2

Let's take a look at another example.

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]
```

We can take these pieces of information and set them out in a tabular format:

| Line | Action                | Object                          | Side Effect                                 | Return Value                    | Is Return Value Used?                        |
| ---- | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | -------------------------------------------- |
| 1    | method call (`map`)   | The outer array                 | None                                        | New array `[nil, nil]`          | No, but shown on line 6                      |
| 1-3  | block execution       | Each sub-array                  | None                                        | `nil`                           | Yes, used by `map` for transformation        |
| 2    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used by `puts`                          |
| 2    | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an Integer | `nil`                           | Yes, used to determine return value of block |

#### Example 3

Let's mix it up a little bit and have you try taking apart an example on your own.

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```

This code will output:

```ruby
1
3
# => [1, 3]
```

We can take these pieces of information and set them out in a tabular format:

| Line | Action                | Object                          | Side Effect                                 | Return Value                    | Is Return Value Used?                        |
| ---- | --------------------- | ------------------------------- | ------------------------------------------- | ------------------------------- | -------------------------------------------- |
| 1    | method call (`map`)   | The outer array                 | None                                        | New array `[1, 3]`              | No                                           |
| 1-4  | block execution       | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used by `map` for transformation        |
| 2    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used by `puts`                          |
| 2    | method call (`puts`)  | Element at index 0 of sub-array | Outputs string representation of an Integer | `nil`                           | No                                           |
| 3    | method call (`first`) | Each sub-array                  | None                                        | Element at index 0 of sub-array | Yes, used to determine return value of block |

#### Example 4

Here's another example.

```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```

Can you take this code apart, just like before? What will be output and what will be the value of `my_arr`?

```ruby
18
7
12
my_arr
# => [[18, 7], [3, 12]
```

We can take these pieces of information and set them out in a tabular format:

Within this example, there are multiple return values as well as side-effects. Make sure you are able to clearly understand how the code works, line by line.

| Line | Action                | Object                                     | Side Effect                                   | Return Value                                       | Is Return Value Used?                              |
| ---- | --------------------- | ------------------------------------------ | --------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| 1    | variable assignment   | n/a                                        | None                                          | `[[18, 7], [3, 12]]`                               | No                                                 |
| 1    | method call (`each`)  | `[[18, 7], [3, 12]]`                       | None                                          | The calling object: `[[18, 7], [3, 12]]`           | Yes, used by variable assignment to `my_arr`       |
| 1-7  | outer block execution | Each sub-array                             | None                                          | Each sub-array                                     | No                                                 |
| 2    | method call (`each`)  | Each sub-array                             | None                                          | The calling object: sub-array in current iteration | Yes, used to determine return value of outer block |
| 2-6  | inner block execution | Element of the sub-array in that iteration | None                                          | `nil`                                              | No                                                 |
| 3    | comparison (`>`)      | Element of the sub-array in that iteration | None                                          | Boolean                                            | Yes, evaluated by `if`                             |
| 3-5  | conditional (`if`)    | Element of the sub-array in that iteration | None                                          | `nil`                                              | Yes, used to determine return value of inner block |
| 4    | method call (`puts`)  | Element of the sub-array in that iteration | Outputs a string representation of an Integer | `nil`                                              | Yes, used to determine return value of inner block |

#### Example 5

Next, let's tackle a slightly more complex example.

```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

What will the return value be in this example?

```ruby
# => [[2, 4], [3, 8]]
```



Within this example, there are multiple return values as well as side-effects. Make sure you are able to clearly understand how the code works, line by line.

| Line | Action                | Object                                     | Side Effect | Return Value                    | Is Return Value Used?                              |
| ---- | --------------------- | ------------------------------------------ | ----------- | ------------------------------- | -------------------------------------------------- |
| 1    | method call (`map`)   | `[[1, 2], [3, 4]]`                         | None        | A new array: `[[2, 4], [3, 8]]` | No                                                 |
| 1-5  | outer block execution | Each sub-array                             | None        | A new array: `[[2, 4], [3, 8]]` | Yes, used by outer `map` for transformation        |
| 2    | method call (`map`)   | Each sub-array                             | None        | A new array: `[[2, 4], [3, 8]]` | Yes, used to determine return value of outer block |
| 2-4  | inner block execution | Element of the sub-array in that iteration | None        | An Integer                      | Yes, used by inner `map` for transformation        |
| 3    | `num * 2`             | N / A                                      | None        | An Integer                      | Yes, used to determine return value of inner block |

#### Example 6

Let's mix it up now with some variation. In the below example, we have an array of hashes, and we want to select all elements where every key matches the first letter of the value. Note that the keys are symbols here, so we'll have to do some conversion before comparison.

```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

Here, `Enumerable#all?` returns `false` on first hash because `elephant` doesn't start with `b`… So first hash hasn't been selected in final array.

| Line | Action                 | Object                                           | Side Effect | Return Value                                              | Is Return Value Used?                                  |
| ---- | ---------------------- | ------------------------------------------------ | ----------- | --------------------------------------------------------- | ------------------------------------------------------ |
| 1    | method call (`select`) | Array of hashes                                  | None        | New selected array ` [{ :c => "cat" }]`                   | No                                                     |
| 1-5  | outer block execution  | Each sub-hash                                    | None        | New selected array ` [{ :c => "cat" }]`                   | Yes, used by `select` for selection (use *truthyness*) |
| 2    | method call (`all?`)   | Each sub-hash                                    | None        | A Boolean. `true` if block never returns `false` or `nil` | Yes, used to determine return value of outer block     |
| 2-5  | inner block execution  | key-value pair of the sub-hash in that iteration | None        | A Boolean                                                 | Yes, used by `all?`                                    |
| 3    | Referencing value[0]   | value of the sub-hash in that iteration          | None        | A string (char)                                           | Yes, used for comparison `==`                          |
| 3    | method call (`to_s`)   | key of the sub-hash in that iteration            | None        | A String                                                  | Yes, used for comparison `==`                          |
| 3    | comparison (`==`)      | 2 strings                                        | None        | A Boolean                                                 | Yes, used to determine return value of inner block     |

What would happen if, instead of using `all?`, we used `any?`. Why would this affect the return value of `select`?

Both hashes would have been selected because `ant` starts with `a`

```ruby
# => [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
```



#### Example 7

Sorting nested data structures can be tricky, and it is important to be clear about the level at which you are sorting and which values you want to use to order your collection.

Say for example we have an array of nested arrays which contain numeric strings, and we want to sort the outer array so that the inner arrays are ordered according to the *numeric* value of the strings they contain. Take, for example, the following 4-element array of arrays.

```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
```

In order to achieve this we have to perform some transformation on the inner arrays prior to comparing them.

```ruby
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]
```

The key here is understanding that when we carry out transformation within a `sort_by` block, the transformed elements are what are then used to perform the comparison.

In this case, each time the top-level block is called, we call `map` on the sub-array for that iteration, within the `map` block we call `to_i` on each string within that particular sub-array, which returns a new array with integers and leaves the original sub-array unmodified. This ends up sorting the outer array by comparing the transformed integers in the inner arrays, which is what we're looking to do, without any side effects.



#### Example 8

It can be tricky to work with different objects in a nested array if you want to only select nested elements based on certain criteria. For example, take the 2-element array below, where we only want to select integers greater than 13 but strings less than 6 characters. The trick here is that the elements are in a two layer nested array data structure.

```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]
```



#### Example 9

This example contains a triple-level nested array. Take your time and try to break down each component. Hint: the top-level array is a 2-element array.

```ruby
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]
```



#### Example 10

Let's say we have the following data structure of nested arrays and we want to increment every number by 1 without changing the data structure.

```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
```

What will be the final return value?

```ruby
# => [[[2, 3], [4, 5]], [6, 7]]
```



#### Mutating Collections While Iterating

One last thing before ending this assignment. ***Do not mutate the collection that you're iterating through.***