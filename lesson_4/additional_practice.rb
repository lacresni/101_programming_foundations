def display_header(message)
  puts "----------------------"
  puts "  #{message}"
  puts "----------------------"
end

# ############################################################################
display_header 'Practice Problem 1'
# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash1 = {}
flintstones.each_with_index do |name, index|
  hash1[name] = index
end

puts "each_with_index"
p hash1

index = 0
hash2 = flintstones.each_with_object({}) do |name, hash|
  hash[name] = index
  index += 1
end

puts "each_with_object"
p hash2

# ############################################################################
display_header 'Practice Problem 2'
# Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_age = 0
ages.each { |_, age| sum_age += age }
puts "Add up all of the ages from the Munster family hash = #{sum_age}"

# Second solution -> shorter
sum_age2 = ages.values.reduce(&:+)
puts "Add up all of the ages from the Munster family hash = #{sum_age2}"

# ############################################################################
display_header 'Practice Problem 3'

# In the age hash, throw out the really old people (age 100 or older).
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts "using Hash#select method"
p ages.select! { |_, age| age < 100 }

puts "using Hash#keep_if method"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.keep_if { |_, age| age < 100 }

puts "using Enumerable#partition method"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
young, old = ages.partition { |_, age| age < 100 }
p young.to_h

# Select or keep_if methods easier to use in this case

# ############################################################################
display_header 'Practice Problem 4'
# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

p ages.values.sort[0]

# ############################################################################
display_header 'Practice Problem 5'
# In the array, find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts 'Use map and find_index methods'
selection = flintstones.map { |name| name.start_with?("Be") }
p selection.find_index(true)

puts 'Find first index manually'
found_index = nil
flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    if found_index == nil
      found_index = index
    end
  end
end
p found_index

puts 'LaunchSchool solution with Array#index method'
p flintstones.index { |name| name.start_with?("Be") }

# ############################################################################
display_header 'Practice Problem 6'
# Amend this array so that the names are all shortened to just the
# first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name = name[0, 3] }
p flintstones

# ############################################################################
display_header 'Practice Problem 7'
# Create a hash that expresses the frequency with which each letter
# occurs in this string:
statement = "The Flintstones Rock"

hash_result = Hash.new(0)
statement.delete(' ').chars.each_with_object(hash_result) do |char, hash|
  hash[char] += 1
end
p hash_result

# Try a solution with Array#count
statement = "The Flintstones Rock"

hash_result2 = Hash.new(0)
arr = statement.delete(' ').chars
arr.each do |char|
  hash_result2[char] = arr.count(char) if hash_result2.key?(char) == false
end
p hash_result2

# ############################################################################
display_header 'Practice Problem 8'
# What happens when we modify an array while we are iterating over it?
# What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# Add debugging information
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# ############################################################################
display_header 'Practice Problem 9'
# As we have seen previously we can use some built-in string methods to change
# the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby
# itself...titleize. This method in Ruby on Rails creates a string that has
# each word capitalized as it would be in a title.
# For example, the string:
# words = "the flintstones rock"
# would be:
# words = "The Flintstones Rock"
#
# Write your own version of the rails titleize implementation.

def titleize(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock!"

words = titleize(words)
p words

# ############################################################################
display_header 'Practice Problem 10'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior).
puts 'My first solution'

munsters.each do |name, info|
  age = info["age"]
  if age < 18
    info["age_group"] = "kid"
  elsif age < 65
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end

p munsters

# ############################################################################
puts
puts 'Use case and ranges'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior).

munsters.each do |name, details|
  case details["age"]
  when (0..17) then details["age_group"] = "kid"
  when (18..64) then details["age_group"] = "adult"
  else  details["age_group"] = "senior"
  end
end

p munsters
