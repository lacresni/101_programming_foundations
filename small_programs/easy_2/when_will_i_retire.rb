# - Ask the user for his age
# - Ask the user when he would like to retire
# - Get current year
# - Compute number of years left to work (age of retirement - current age)
# - Compute year of retirement (current year + number of years left to work)
# - Display year when the user will retire
# - Display number of years left to work

puts 'What is your age?'
current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
age_retirement = gets.chomp.to_i

current_year = Time.now.year

nb_years_to_work = age_retirement - current_age
retirement_year = current_year + nb_years_to_work

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{nb_years_to_work} years of work to go!"
