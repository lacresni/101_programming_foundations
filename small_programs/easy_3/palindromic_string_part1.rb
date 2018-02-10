# Write a method that returns true if the string passed as an argument is
# a palindrome, false otherwise. A palindrome reads the same forward and
# backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(string)
  string.reverse == string
end

def palindromic_array?(arr)
  arr.reverse == arr
end

def palindromic_array_or_str?(obj)
  obj.reverse == obj
end

puts 'palindrome'
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

puts 'palindromic_array'
p palindromic_array?(%w(car bus moto bus car)) == true
p palindromic_array?([1, 2, 3, 4, 5]) == false
p palindromic_array?([1, 2, 3, 3, 2, 1]) == true

puts 'palindromic_array_or_str'
p palindromic_array_or_str?(%w(car bus moto bus car)) == true
p palindromic_array_or_str?([1, 2, 3, 4, 5]) == false
p palindromic_array_or_str?([1, 2, 3, 3, 2, 1]) == true
p palindromic_array_or_str?('madam') == true
p palindromic_array_or_str?('Madam') == false          # (case matters)
p palindromic_array_or_str?("madam i'm adam") == false # (all characters matter)
p palindromic_array_or_str?('356653') == true
