# rand(n) method generates a random number between 0 and n-1
def random_age
  rand(181) + 20 # age between 20 and 200
end

def display_age(age, name = 'Teddy')
  puts "#{name} is #{age} years old!"
end

age = random_age
display_age(age)

puts
puts 'Further exploration'

puts 'What is your name?'
name = gets.chomp.capitalize
age = random_age

display_age(age, name)
