def display_header(message)
  puts "----------------------"
  puts "  #{message}"
  puts "----------------------"
end

# ############################################################################
display_header 'Practice Problem 1'
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# sorted_array = arr.sort_by { |str_nb| str_nb.to_i }.reverse
# p sorted_array

sorted_array = arr.sort do |a,b|
  b.to_i <=> a.to_i
end
p sorted_array

# ############################################################################
display_header 'Practice Problem 2'
# How would you order this array of hashes based on the year of publication of
# each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort_by do |book|
  book[:published]
end
p sorted_books

# ############################################################################
display_header 'Practice Problem 3'
# For each of these collection objects demonstrate how you would reference
# the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts "arr1: #{arr1[2][1][3]}"

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts "arr2: #{arr2[1][:third][0]}"

arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts "arr3: #{arr3[2][:third][0][0]}"

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
puts "hsh1: #{hsh1['b'][1]}"

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts "hsh2: #{hsh2[:third].key(0)}"
puts "hsh2: #{hsh2[:third].assoc('g')[0]}"

# ############################################################################
display_header 'Practice Problem 4'
# For each of these collection objects where the value 3 occurs,
# demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
puts "arr1: #{arr1}"
arr1[1][1] = 4
puts "arr1: #{arr1}"

puts
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
puts "arr2: #{arr2}"
arr2[2] = 4
puts "arr2: #{arr2}"

puts
hsh1 = {first: [1, 2, [3]]}
puts "hsh1: #{hsh1}"
hsh1[:first][2][0] = 4
puts "hsh1: #{hsh1}"

puts
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
puts "hsh2: #{hsh2}"
hsh2[['a']][:a][2] = 4
puts "hsh2: #{hsh2}"

# ############################################################################
display_header 'Practice Problem 5'
# Given this nested Hash, figure out the total age of just the male members
# of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |infos|
  total_male_age += infos["age"] if infos["gender"] == "male"
end
puts "Total age of male members is #{total_male_age} years"

# ############################################################################
display_header 'Practice Problem 6'
# One of the most frequently used real-world string properties is that of
# "string substitution", where we take a hard-coded string and modify it
# with various parameters from our program.
#
# Given this previously seen family hash, print out the name, age and gender
# of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# ...like this: (Name) is a (age)-year-old (male or female).
munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
end

# ############################################################################
display_header 'Practice Problem 7'
# Given this code, what would be the final values of a and b?
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

puts "My guess is a == 2 and a is really #{a}"
puts "My guess is b == [3, 8] and b is really #{b}"

# ############################################################################
display_header 'Practice Problem 8'
# Using the each method, write some code to output all of the vowels
# from the strings.

hsh = { first: ['the', 'quick'],
        second: ['brown', 'fox'],
        third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog']
      }

VOWELS = %w(a e i o u)

hsh.each do |_, array|
  array.each do |word|
    word.each_char do |char|
      puts char if VOWELS.include?(char)
    end
  end
end

# ############################################################################
display_header 'Practice Problem 9'
# Given this data structure, return a new array of the same structure
# but with the sub arrays being ordered (alphabetically or numerically as
# appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = arr.map do |array|
  array.sort { |a,b| b <=> a }
end

p new_array

# ############################################################################
display_header 'Practice Problem 10'
# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.

original_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = original_arr.map do |sub_hash|
  hash_incremented = {}
  sub_hash.each do |key, value|
    hash_incremented[key] = value + 1
  end
  hash_incremented
end

puts "original_arr = #{original_arr}"
puts "new_arr = #{new_arr}"

# ############################################################################
display_header 'Practice Problem 11'
# Given the following data structure use a combination of methods,
# including either the select or reject method, to return a new array identical
# in structure to the original but containing only the integers that are
# multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_array = arr.map do |sub_array|
  sub_array.select { |int| int % 3 == 0 }
end

puts "Original array is #{arr}"
puts "New array is #{new_array}"

# ############################################################################
display_header 'Practice Problem 12'
# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item
# in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash_result = arr.each_with_object({}) do |sub_arr, hash|
  hash[sub_arr[0]] = sub_arr[1]
end

puts "hash_result = #{hash_result}"

# ############################################################################
display_header 'Practice Problem 13'
# Given the following data structure, return a new array containing the same
# sub-arrays as the original but ordered logically according to the numeric
# value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
new_arr = arr.sort_by do |sub_arr|
  sub_arr.select { |x| x.odd? }
end

p new_arr
p new_arr == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# ############################################################################
display_header 'Practice Problem 14'
# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = hsh.map do |_, sub_hash|
  case sub_hash[:type]
  when 'fruit' then sub_hash[:colors].map(&:capitalize)
  when 'vegetable' then sub_hash[:size].upcase
  end
end

p new_arr
p new_arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# ############################################################################
display_header 'Practice Problem 15'
# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |sub_hash|
  # Below was my first solution
  # arr_values = sub_hash.values.flatten.uniq
  # arr_values.all? { |x| x.even? }

  sub_hash.all? do |_, values|
    values.all? { |x| x.even? }
  end
end

p new_arr

# ############################################################################
display_header 'Practice Problem 16'

# Write a method that returns one UUID when called with no parameters.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def generate_uuid
  uuid = []
  sections = [8, 4, 4, 4, 12]

  sections.each do |nb|
    str = ''
    nb.times do
      str << format('%x', rand(16))
    end
    uuid << str
  end

  uuid.join('-')
end

p generate_uuid()
