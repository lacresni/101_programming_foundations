# Sum or Product of Consecutive Integers

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

```
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
```



### Understand the problem

```
- Input:
  - Ask the user for an integer greater than 0
  - Ask the user the operation to perform (sum or product)
- Output:
  - sum of all numbers between 1 and the entered integer.
  - product of all numbers between 1 and the entered integer.
```

### Tests Cases

```
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
```

### Data Structures

```
- Input:
  - integer (greater than 0)
  - operation to perform as a string char ('s'=sum or 'p'=product)
- Output:
  - sum as an integer.
  - product as an integer.
```

### Algorithm

```
- Ask the user for an integer greater than 0
- Ask the user the operation to perform (sum or product)
- If operation to perform == sum
	- Compute sum of all numbers between 1 and the entered integer.
- else
	- Compute product of all numbers between 1 and the entered integer.
- Display results
```



#### Further Exploration

The `compute_sum` and `compute_product` methods are simple and should be familiar. A more rubyish way of computing sums and products is with the `Enumberable#inject` method. `#inject` is a very useful method, but if you've never used it before, it can be difficult to understand.

Take some time to read the documentation for `#inject`. (Note that all `Enumerable` methods can be used on Array.) Try to explain how it works to yourself.

**My explanation**

`#inject` (or `#reduce` ) combines all elements from *enum* with a binary operation (defined by a block or a symbol naming a method or operator)

When using a block, a `memo` accumulator variable is passed as an argument and is returned by the block for each iteration. At the end, `memo` is returned by the block.

```ruby
# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
```

It is possible to define an initial value as the first argument. By default, initial value is first element of the collection.



Try to use `#inject` in your solution to this problem.