# Write a method that implements a miniature stack-and-register-based
# programming language that has the following commands:
#
# - n Place a value n in the "register". Do not modify the stack.
# - PUSH Push the register value on to the stack. Leave the value in the
#   register.
# - ADD Pops a value from the stack and adds it to the register value,
#   storing the result in the register.
# - SUB Pops a value from the stack and subtracts it from the register value,
#   storing the result in the register.
# - MULT Pops a value from the stack and multiplies it by the register value,
#   storing the result in the register.
# - DIV Pops a value from the stack and divides it into the register value,
#   storing the integer result in the register.
# - MOD Pops a value from the stack and divides it into the register value,
#   storing the integer remainder of the division in the register.
# - POP Remove the topmost item from the stack and place in register
# - PRINT Print the register value
#
# You should initialize the register to 0.

def minilang(op_str)
  puts "new minilang operations"
  p cmd_arr = op_str.split(' ')

  register = 0
  stack = []
  err_msg = nil

  cmd_arr.each do |cmd|
    begin
      case cmd
      when 'PRINT' then puts register
      when 'PUSH'  then stack.push(register)
      when 'POP'   then register = stack.pop
      when 'MULT'  then register *= stack.pop
      when 'DIV'   then register /= stack.pop
      when 'MOD'   then register %= stack.pop
      when 'ADD'   then register += stack.pop
      when 'SUB'   then register -= stack.pop
      else
        # Test if it is an integer
        if cmd.to_i.to_s == cmd
          register = cmd.to_i
        else
          err_msg = "Invalid Token: #{cmd}"
        end
      end
    rescue TypeError
      err_msg = "Empty Stack detected when executing #{cmd}..."
    end
  end

  err_msg
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

puts "-------------------"
puts "Further Exploration"
# (3 + (4 * 5) - 7) / (5 % 3)
# (3 + 20 - 7) / 2
# Trick is to start by the end of the expression
minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
p minilang('3 PUT 5') # Test invalid token
p minilang('3 PUSH POP ADD PRINT')
