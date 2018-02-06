# Greeting a user

Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Examples

```
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
```



### Understand the problem

```
- Input:
  - Ask for user's name
- Output:
  - Greet the user
  - If user writes "name!"
    - Yells back to the user
```

### Tests Cases

```
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
```

### Data Structures

```
- Input:
  - User name as a string
- Output:
  - Greeting as a string
```

### Algorithm

```
- Ask for user's name
- Check if name ends with '!'
  - If not, greet user
  - If yes
    - Remove '!' from name
    - Greet the user by displaying string in uppercase
```



**Tips:**

You may find `String#chomp` or `String#chop` handy.

`String#chop` returns a new string with last character removed.



#### Further Exploration

Try modifying our solution to use `String#chomp!` and `String#chop!`, respectively.