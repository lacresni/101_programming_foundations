# String Assignment

Take a look at the following code:

```ruby
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
```

What does this code print out? Think about it for a moment before continuing.

If you said that code printed

```
Alice
Bob
```

you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

```ruby
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
```

What does this print out? Can you explain these results?

**My answer**

This code prints out:

```
BOB
BOB
```

On line 1, name is initialized and references string `'Bob'`

On line 2, save_name is initialized and references name. Thus name and save_name are aliases and both reference string `'Bob'`

On line 3, the upcase! is called. This method mutates the caller and thus string `'Bob'` is modified to `'BOB'`. However, name and save_name still references the same object which is the `'BOB'` string.

This is why `'BOB'` is printed twice on line 4.

