# Tip calculator

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

```
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
```



### Understand the problem

```
- Input:
  - ask user for a bill amount
  - ask user for a tip rate
- Output:
  - Display tip
  - Display total amount of the bill
```

### Tests Cases

```
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
```

### Data Structures

```
- Input:
  - bill amount (positive float)
  - ask user for a tip rate (positive float)
- Output:
  - Display tip (float)
  - Display total amount of the bill (float)
```

### Algorithm

```
- ask user for a bill amount
- ask user for a tip rate in percent
- Compute the tip (bill amount * tip rate / 100)
- Display tip
- Display total amount of the bill
```



#### Further Exploration

Our solution prints the results as `$30.0` and `$230.0` instead of the more usual `$30.00` and `$230.00`. Modify your solution so it always prints the results with 2 decimal places.

Hint: You will likely need `Kernel#format` for this.