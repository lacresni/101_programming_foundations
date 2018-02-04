# Assignment: Mortgage / Car Loan Calculator

Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

You'll need three pieces of information:

- the loan amount
- the Annual Percentage Rate (APR)
- the loan duration

From the above, you'll need to calculate the following two things:

- monthly interest rate
- loan duration in months

You can use the following formula:

![Mortgage Calculator Formula](http://d1b1wr57ag5rdp.cloudfront.net/images/mortgage_calc_formula.png)

Translated to Ruby, this is what the formula looks like:

```ruby
m = p * (j / (1 - (1 + j)**(-n)))
```

- m = monthly payment
- p = loan amount
- j = monthly interest rate
- n = loan duration in months

Finally, don't forget to run your code through Rubocop.

Hints:

- Figure out what format your inputs need to be in. For example, should the interest rate be expressed as `5` or `.05`, if you mean 5% interest?
- If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
- Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.



### Understand the problem

```
- Input:
  - Loan amount
  - Annual Percentage Rate (APR)
  - Loan duration in months
- Output:
  - Monthly payment
```

### Tests Cases

```
mortgage_simulator(20000, 4, 48) => 451.58
```

### Data Structures

```
- Input:
  - Loan amount as a float
  - Annual Percentage Rate (APR) as a float
  - Loan duration in months as an integer
- Output:
  - Monthly payment as a float
```

### Algorithm

```
- Convert Annual Percentage Rate to monthly interest rate
- Compute formula
- Return monthly payment value
```



#### Things to think about

1. Where did that `format` method come from?

```ruby
prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")
```

See `Kernel#format` documentation [here](http://ruby-doc.org/core-2.4.1/Kernel.html#method-i-format). This is like `sprintf` in C language. It is used to format your inputs as you like.  `Kernel#format` returns a string formatted with the content given in parameter. 

2. This "$#{format('%02.2f', monthly_payment)}" is really hard to read, what's happening?

We want to format our monthly payment value with the following format:

* At least two digits before the decimal point (padded with 0 if necessary)
* Decimal part is maximum two digits

```
Ex: 03.45
```

