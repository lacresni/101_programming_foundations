# ask user for two numbers
# ask user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp().to_i

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp().to_i

Kernel.puts("What operation would you like to perform? 1) add 2) substract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  puts number1 + number2
elsif operator == '2'
  puts number1 - number2
elsif operator == '3'
  puts number1 * number2
elsif operator == '4'
  if number2 != 0
    puts number1.to_f / number2.to_f
  else
    puts "Division by 0 is forbidden!"
  end
else
  puts "Undefined operation..."
end
