# 1000 Lights

You have a bank of switches before you, numbered from 1 to `n`. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through `n` repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after `n` repetitions.

Example with `n` = 5 lights:

- round 1: every light is turned on
- round 2: lights 2 and 4 are now off; 1, 3, 5 are on
- round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
- round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
- round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is `[1, 4]`.

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is `[1, 4, 9]`.



### Understand the problem

```
- Input:
  - An integer 'n' (>0)
- Output:
  - An array that identifies which lights are on after n repetitions.
```

### Tests Cases

```ruby
switch_lights(5) == [1, 4]
switch_lights(10) == [1, 4, 9]
```

### Data Structures

```
- Input:
  - An integer 'n' (>0)
- Output:
  - An array of integers
```

### Algorithm

```
- Create an array of n elements having values 0 (lights[])
- Iterate from 1 to n
  - For each iteration (nb)
    - Switch lights[] elements at index % 'nb'
- Find indexes in lights[] where value is 1
```



#### Further Exploration

There are a few interesting points about this exercise that we can explore:

1. Do you notice the pattern in our answer? Every light that is on is a perfect square. Why is that?



2. What are some alternatives for solving this exercise? What if we used an `Array` to represent our 1000 lights instead of a `Hash`, how would that change our code?

=> See 1000_lights.rb file



3. We could have a method that replicates the output from the description of this problem (i.e. "lights 2, 3, and 5 are now off; 1 and 4 are on.") How would we go about writing that code?

=> We could use two array:

* One containing indexes having values "off"
* One containing indexes having values "on"

Then we could use Array#join method on these arrays (with ', ' as a separator) to create strings. Then we'll simply have to use string concatenation (or string interpolation) to display them