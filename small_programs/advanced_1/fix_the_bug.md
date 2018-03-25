# Fix the Bug

The following code:

```ruby
def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
```

is expected to print:

```
[]
[21]
[9, 16]
[25, 36, 49]
```

However, it does not. Obviously, there is a bug. Find and fix the bug, then explain why the buggy program printed the results it did.

Error is on line 4. It should have been:

```ruby
  elsif array.size > 1
```

The buggy program was returning:

```
[]
nil
nil
nil
```

This is because Ruby interpreted the buggy code this way:

```ruby
  elsif array.map { |value| value * value } # always evaluates to `true`
    # nothing so => nil
  else
    [7 * array.first]
  end
```

