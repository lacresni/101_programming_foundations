# Right Triangles

Write a method that takes a positive integer, `n`, as an argument, and displays a right triangle whose sides each have `n` stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Examples:

```
triangle(5)

    *
   **
  ***
 ****
*****
```

```
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
```

### Understand the problem

```
- Input:
  - A positive integer 'n'
- Output:
  - Displays a right triangle whose sides each have 'n' stars
  - The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A positive integer 'n'
- Output:
  - 'n' strings
```

### Algorithm

```
- Line 1 = 'n-1' spaces and 1 '*'
- Line 2 = 'n-2' spaces and 2 '*'
...
- Line 'n' = '0' spaces and 'n' '*'

Loop n times
```



#### Further Exploration

Try modifying your solution so it prints the triangle upside down from its current orientation. Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.