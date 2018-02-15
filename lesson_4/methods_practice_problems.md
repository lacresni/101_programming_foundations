# Practice Problems: Methods and More Methods

#### Practice Problem 1

What is the return value of the `select` method below? Why?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

The `select ` method will return:

```ruby
# => [1, 2, 3]
```

This is because `select` uses the return value of the block. It selects only *truthy* elements. Here, the last evaluated expression of the block is the string  `hi` which always evaluates as *truthy* so all elements are selected and returned in a **new array**.

#### Practice Problem 2

How does `count` treat the block's return value? How can we find out?

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

According to the `Array#count` documentation [here](http://ruby-doc.org/core-2.4.1/Array.html#method-i-count): 

> If a block is given, counts the number of elements for which the block returns a true value.

It means that `count` considers the *truthiness of the block's returned value*.

So the returned value will be:

``` ruby
# => 2
```

#### Practice Problem 3

What is the return value of `reject` in the following code? Why?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

According to the `Array#reject` method documentation [here](http://ruby-doc.org/core-2.4.1/Array.html#method-i-reject)

> Returns a new array containing the items in `self` for which the given block is not `true`. 

Here, the block's returned value will always be `nil` because `puts` method is the last evaluated expression in the block. So, `reject` will return a new array with all element from the calling array.

```ruby
# => [1, 2, 3]
```

#### Practice Problem 4

What is the return value of `each_with_object` in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

```ruby
# => {'a'=>'ant', 'b'=>'bear', 'c'=>'cat'}
```

`each_with_object` method takes a hash object as an argument. That object is then passed into the block and is returned at the end of each iteration. Finally, this hash is returned once iteration is over. 

For each iteration, a new hash entry is created with first character of *value* string as the key and *value* string as the hash value. 

#### Practice Problem 5

What does `shift` do in the following code? How can we find out?

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```

`shift` method removes the first key-value pair of the hash. We can find this out in the `Hash#shift` documentation [here](http://ruby-doc.org/core-2.4.1/Hash.html#method-i-shift)

> Removes a key-value pair from *hsh* and returns it as the two-item array `[` *key, value* `]`, or the hash’s default value if the hash is empty.

So here, `shift` returns

```ruby
# => [:a, "ant"]
hash
# => {:b => "bear"}
```

#### Practice Problem 6

What is the return value of the following statement? Why?

```ruby
['ant', 'bear', 'caterpillar'].pop.size
```

`Array#pop` method removes permanently the last element of an array and returns this element.

So here, `['ant', 'bear', 'caterpillar'].pop` returns `caterpillar` string.

Then `String#size` method is called on `caterpillar` string.

So the final returned value is:

```ruby
# => 11
```

#### Practice Problem 7

What is the **block**'s return value in the following code? How is it determined? Also, what is the return value of `any?` in this code. What gets output by this code?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

The block's returned value is the last evaluted expression of the block. Here, it corresponds to the result of `num.odd?` evaluated expression (`true` if `num` is odd, `false` otherwise).

`any?` method returns `true` if at least one of the block's returned value different from `false`or `nil`.  So here, `any?` returns `true` because the block will be evaluated to `true` for elements 1. It stops after the first iteration since there is no need to evaluate the remaining items in the array.

```ruby
1
# => true
```

#### Practice Problem 8

How does `take` work? Is it destructive? How can we find out?

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```

According to the `Array#take` documentation [here](http://ruby-doc.org/core-2.4.1/Array.html#method-i-take)

> take(n) → new_ary
>
> Returns first `n` elements from the array.

It returns a new array so it is not destructive.

```ruby
# => [1, 2]
arr
# => [1, 2, 3, 4, 5]
```

#### Practice Problem 9

What is the return value of `map` in the following code? Why?

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

`map` always uses the returned value of the block to perform its transformation.

Here, according to the string `value` size, the block's returned value will be :

* either string `value` if `value.size` > 3
* `nil` if `value.size` <= 3

`map` **returns a new array filled with returned values from the block**.

So here, `map` returned value is:

```ruby
# => [nil, "bear"]
```

#### Practice Problem 10

What is the **block**'s return value in the following code? Why?

```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

2 possibilities according to `num` value:

* `num > 1` , then `puts num` is the last evaluated expression in the block. So the block returns `nil`
* `num <= 1` , then `num` is the last evaluated expression in the block. So the block returns `num`

So here, `map` returns a **new array** having value:

```ruby
# => [1, nil, nil]
```

