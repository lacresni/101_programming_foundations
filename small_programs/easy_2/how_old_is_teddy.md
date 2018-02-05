# How old is Teddy?

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

```ruby
Teddy is 69 years old!
```



### Understand the problem

```
- Output:
  - Randomly generates and prints Teddy's age
    - Age must be a random number between 20 and 200.
```

### Tests Cases

```
Run your program several and check age is different and between 20 and 200
```

### Data Structures

```
- Output:
  - An integer
```

### Algorithm

```
- Generate a random number between 20 and 200
- Print Teddy's age
```



**LaunchSchool Solution**

```ruby
age = rand(20..200)
puts "Teddy is #{age} years old!"
```

Important: It is possible to use a range with `rand` method.



#### Further Exploration

Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.