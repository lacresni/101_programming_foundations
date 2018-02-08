# Mutation

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```

**My Solution**

On line 1, `array1` is initialed and references an array of strings.

On line 2, `array2` is initialized and references an empty array.

On line 3, `array1` elements are added to `array2`. `each` loop simply **copies a bunch of references** from `array1` to `array2`. So both arrays now references the same string objects.

On line 4, we are iterating through `array1` elements and we are calling `value.upcase!` method that mutates the caller on string elements starting with a 'C' or a 'S'.

So `array1` now contains ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo'].

On line 5, `array2` references the same string objects so it prints out:

```
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
```



