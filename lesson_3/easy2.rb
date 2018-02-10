def display_header(message)
  puts
  puts "------------------"
  puts "  #{message}"
  puts "------------------"
end

# ############################################################################
display_header('Question 1')
# In this hash of people and their age,
# see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")

# Bonus: What are two other hash methods that would work just as well
# for this solution?
ages.key?("Spot")
ages.member?("Spot")

ages.fetch("Spot", "unknown...")

# ############################################################################
display_header('Question 2')
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways
# (code will be executed on original munsters_description above):
#
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.capitalize
p munsters_description.capitalize == "The munsters are creepy in a good way."

puts munsters_description.swapcase
p munsters_description.swapcase == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."

puts munsters_description.downcase
p munsters_description.downcase == "the munsters are creepy in a good way."

puts munsters_description.upcase
p munsters_description.upcase == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# ############################################################################
display_header('Question 3')

# We have most of the Munster family in our age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# Add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages


# ############################################################################
display_header('Question 4')

# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino")
# or
p advice.match("Dino")

# ############################################################################
display_header('Question 5')

# Show an easier way to write this array:
#   flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# ############################################################################
display_header('Question 6')
# How can we add the family pet "Dino" to our usual array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"
p flintstones

# ############################################################################
display_header('Question 7')
# In the previous practice problem we added Dino to our array like this:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones += %w(Dino Hoppy)
p flintstones

# or
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
p flintstones

# or
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")
p flintstones

# ############################################################################
display_header('Question 8')
# Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the
# return value "Few things in life are as important as ".
# But leave the advice variable as "house training your pet dinosaur.".
puts "'house' start is at index #{advice.index('house')}"
p advice.slice!(0, advice.index('house'))
p advice

# As a bonus, what happens if you use the String#slice method instead?
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice(0, advice.index('house'))
p advice

# ############################################################################
display_header('Question 9')
# Write a one-liner to count the number of lower-case 't' characters in
# the following string:
statement = "The Flintstones Rock!"

p statement.count('t')

# ############################################################################
display_header('Question 10')
# Back in the stone age (before CSS) we used spaces to align things on the screen.
# If we had a 40 character wide table of Flintstone family members,
# how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
puts title.center(40)
