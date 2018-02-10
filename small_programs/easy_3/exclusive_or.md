# Exclusive Or

The `||` operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey. The `&&`operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called *exclusive or*.

In this exercise, you will write a method named `xor` that takes two arguments, and returns `true` if exactly one of its arguments is truthy, `false` otherwise.

Examples:

```ruby
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
```



### Understand the problem

```
- Input:
  - Two boolean expressions
- Output:
  - A boolean returning true if exactly one of its arguments is truthy, false otherwise.
```

### Tests Cases

```ruby
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
```

### Data Structures

```
- Input:
  - Two boolean values
- Output:
  - A boolean
```

### Algorithm

```
- Perform a XOR between the two arguments
- Return XOR result
```



**Note**

Some of you may be tempted to use the `^` operator for this exercise. The `^` operator is a ruby **bit-wise operator** for performing exclusive-or bit operations. In some cases, this means that `^` can be used as an exclusive-or operator. However, *this only works properly when both operands are the same type*. For this reason, you **should not** use `^` as a boolean `xor` operator.



#### Further Exploration

Can you think of a situation in which a boolean `xor` method would be useful? Suppose you were modeling a light at the top of a flight of stairs wired in such a way that the light can be turned on or off using either the switch at the bottom of the stairs or the switch at the top of the stairs. This is an xor configuration, and it can be modeled in ruby using the `xor` method. Think of some additional examples.

* Magnetic poles (only opposite attracts...)
* ["XOR is like cheating on your girlfriend: if you are alone with her it is ok, if you are alone with the other girl is ok, if you with none or with both you are screwed."](https://stackoverflow.com/questions/18944771/xor-situations-in-real-life)
* Telling your children they can have candies or ice cream, but they can't have both!



`||` and `&&` are so-called *short circuit* operators in that the second operand is not evaluated if its value is not needed. 

Does the `xor` method perform short-circuit evaluation of its operands? 

=> No, it doesn't perform short-circuit evaluation

Why or why not?

=> Because the two operands must be evaluated to return proper result (only one operand can be `true`, so the second one must be evaluated)

Does short-circuit evaluation in `xor` operations even make sense?

=> Of course, no, it does'nt make sense...