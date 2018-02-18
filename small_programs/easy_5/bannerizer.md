# Bannerizer

Write a method that will take a short line of text, and print it within a box.

Example:

```
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
```



```
print_in_box('')
+--+
|  |
|  |
|  |
+--+
```

You may assume that the input will always fit in your terminal window.

### Understand the problem

```
- Input:
  - A string
- Output:
  - Print string within a box
    - Line 1 is the same as line 5 "+----+"
    - Line 2 is the same as line 4 "|    |"
    - Line 3 is string + '| ' before and ' |' after
```

### Tests Cases

```
See above
```

### Data Structures

```
- Input:
  - A string
- Output:
  - Display several strings
```

### Algorithm

```
- Compute string size (str_size)
- Format first line
  -  "+" + '-'*(str_size + 2) + "+"
- Format second line
  -  "|" + ' '*(str_size + 2) + "|"
- Format third line
  -  "| " + string + " |"
- Display line 1-5
```



##### Further Exploration

Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

