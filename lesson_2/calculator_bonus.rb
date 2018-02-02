# ask user for two numbers
# ask user for an operation to perform
# perform the operation on the two numbers
# output the result
require 'yaml'

LANGUAGE = 'fr' # 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')

def message(msg, lang = 'en')
  MESSAGES[lang][msg]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1' then message('adding', LANGUAGE)
            when '2' then message('substracting', LANGUAGE)
            when '3' then message('multiplying', LANGUAGE)
            when '4' then message('dividing', LANGUAGE)
            end
  message
end

prompt(message('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(message('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("#{message('hi', LANGUAGE)} #{name}!")

loop do # main loop
  number1 = 0
  loop do
    prompt(message('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(message('invalid_nb', LANGUAGE))
    end
  end

  number2 = 0
  loop do
    prompt(message('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(message('invalid_nb', LANGUAGE))
    end
  end

  # We use HEREDOC to display message on several lines
  operator_prompt = <<-MSG
#{message('operator_prompt', LANGUAGE)}
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(message('wrong_operator', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} #{message('operation', LANGUAGE)}")

  result = case operator
           when '1' then number1.to_f + number2.to_f
           when '2' then number1.to_f - number2.to_f
           when '3' then number1.to_f * number2.to_f
           when '4' then number1.to_f / number2.to_f
           end

  prompt("#{message('result', LANGUAGE)} #{result}")

  prompt(message('another_calc', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?(message('valid_char', LANGUAGE))
end

prompt(message('bye', LANGUAGE))
