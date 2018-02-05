# How big is the room?

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

```
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
```



### Understand the problem

```
- Input:
  - Ask user input for a length (in meters)
  - Ask user input for a width (in meters)
- Output:
  - Area of the room in square meters
  - Area of the room in square feet
```

### Tests Cases

```
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
```

### Data Structures

```
- Input:
  - A float for length (in meters)
  - A float for width (in meters)
- Output:
  - A float for area of the room in square meters
  - A float for area of the room in square feet
```

### Algorithm

```
- Ask user input for the length of the room in meters
- Transform string to float
- Ask user input for the width of the room in meters
- Transform string to float
- Compute area of the room in square meters (length * width)
- Compute area of the room in square feet (length * width * 10.7639)
- Display results
```
