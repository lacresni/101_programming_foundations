# Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input:

```
Please write word or multiple words: walk
```

output:

```
There are 4 characters in "walk".
```

input:

```
Please write word or multiple words: walk, don't run
```

output:

```
There are 13 characters in "walk, don't run".
```



### Understand the problem

```
- Input:
  - Ask user for:
    - a word
    - multiple words
- Output:
  - Number of characters (spaces not included)
```

### Tests Cases

```
- There are 4 characters in "walk".
- There are 13 characters in "walk, don't run".
```

### Data Structures

```
- Input:
  - String
- Output:
  - Integer (numbers of characters)
```

### Algorithm

```
- Ask user for a word or multiple words stored in a string
- Split the string and remove spaces
- Join words together into a single string
- Return the size of the string
```



**LaunchSchool Solution**

### Algorithm

```
- Ask user for a word or multiple words stored in a string
- Delete spaces
- Return the size of the string
```

```ruby
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
```

