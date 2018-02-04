# - Check the boolean:
#   - If false, return 0
#   - If true, return positive integer / 2.0

def calculate_bonus(salary, bonus_bool)
  bonus_bool ? salary / 2.0 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false).zero?
puts calculate_bonus(50_000, true) == 25_000
puts calculate_bonus(3801, true) == 1900.5
