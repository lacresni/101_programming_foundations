# Test case 20000, 4, 48 => 451.58

def prompt(message)
  puts "=> #{message}"
end

def integer_valid?(number)
  if number.to_i.to_s == number
    number.to_i < 0 ? false : true
  else
    false
  end
end

def float_valid?(number)
  if number.to_f.to_s == number
    number.to_f < 0 ? false : true
  else
    false
  end
end

def number_valid?(number)
  integer_valid?(number) || float_valid?(number)
end

def convert_apr_to_monthly_rate(percent_apr)
  # Simply divide by 12 and by 100 to work with real rate (not %)
  percent_apr / 1200.0
end

def mortgage_simulator(loan_amount, percent_apr, month_duration)
  # Compute monthly intereset rate from Annual Percentage Rate (in %)
  monthly_rate = convert_apr_to_monthly_rate(percent_apr)

  # Compute monthly payment with given formula
  loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**-month_duration))
end

prompt("Welcome to the car loan simulator!")

loop do
  loan_amount = nil
  apr_percent = nil
  month_duration = nil

  loop do
    prompt("What is the loan amount (in $)?")
    loan_amount = gets.chomp
    break if number_valid?(loan_amount)
    puts "You must enter a positive number..."
  end

  loop do
    prompt("What is Annual Percentage Rate (in %)?")
    apr_percent = gets.chomp
    break if number_valid?(apr_percent)
    puts "You must enter a positive number..."
  end

  loop do
    prompt("What is the loan duration (in months)?")
    month_duration = gets.chomp
    break if number_valid?(month_duration)
    puts "You must enter a positive number..."
  end

  puts "Processing your inputs..."
  puts "Loan amount: #{loan_amount}$"
  puts "Annual Percentage Rate: #{apr_percent}%"
  puts "Loan duration: #{month_duration} months"
  monthly_payment = mortgage_simulator(loan_amount.to_i,
                                       apr_percent.to_f,
                                       month_duration.to_i)

  puts "--------------------------------------------"
  puts "Your monthly payment will be #{monthly_payment.round(2)}$"

  puts
  puts "Do you want to perform a new simulation? (Y for yes)"
  break unless gets.chomp.downcase.start_with?('y')
end
