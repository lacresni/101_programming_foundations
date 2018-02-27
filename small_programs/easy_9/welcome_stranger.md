# Welcome Stranger

Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, `:title` and `:occupation`, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

Example:

```ruby
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
```



### Understand the problem

```
- Input:
  - An array
    - contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name
  - A hash
    - contain two keys, :title and :occupation, and the appropriate values
- Output:
  - A string that uses the person's full name, and mentions the person's title
    - Ex: "Hello, John Q Doe! Nice to have a Master Plumber around."
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - An array
  - A hash
- Output:
  - A string
```

### Algorithm

```
- Create person's name
  - Join array with ' ' and store to string variable name
- Use string interpolation to create greeting message
  - Get person's name (variable name)
  - Get title with hash[:title]
  - Get Occupation with hash[:occupation]
```

#### Further Exploration

This method doesn't actually pass rubocop! What is the best way to shorten the lines in this method so it doesn't exceed the 80 maximum characters to a line?

=> It is possible to use the `\` character to split the string