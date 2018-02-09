def display_header(message)
  puts "------------------"
  puts "  #{message}"
  puts "------------------"
end

display_header 'Question 1'
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

display_header 'Question 3'
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

display_header 'Question 4'
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:
# What do the following method calls do (assume we reset numbers to the original
# array between method calls)?
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers

display_header 'Question 5'
# Programmatically determine if 42 lies between 10 and 100.
p (10..100).include?(42)

display_header 'Question 6'
# Starting with the string:
# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words = "seven years ago..."
start_str = "Four score and "

puts "Solution 1"
famous_words = start_str + famous_words
p famous_words

puts "Solution 2"
famous_words = "seven years ago..."
start_str = "Four score and "
famous_words = start_str << famous_words
p famous_words

puts "Solution 3"
famous_words = "seven years ago..."
start_str = "Four score and "
famous_words.prepend(start_str)
p famous_words


display_header 'Question 7'

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
# This gives us a string that looks like a "recursive" method call:
# "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

# If we take advantage of Ruby's Kernel#eval method to have it execute this string
# as if it were a "recursive" method call
p eval(how_deep)


display_header 'Question 8'

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

flintstones.flatten!
p flintstones


display_header 'Question 9'
# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements:
# Barney's name and Barney's number
p flintstones.to_a[2]

# LaunchSchool Solution
p flintstones.assoc("Barney")
