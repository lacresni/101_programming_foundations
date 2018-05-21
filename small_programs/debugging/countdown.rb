# Our countdown to launch isn't behaving as expected. Why?
# Change the code so that our program successfully counts down from 10 to 1.
COUNTDOWN = 10

def decrease(counter)
  counter - 1
end

counter = COUNTDOWN

COUNTDOWN.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
