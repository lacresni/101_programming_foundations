# - Create an empty array substrings[]
# - Make a copy of input string
# - Iterate until empty
#   - Call substrings_at_start(string)
#   - Store substrings into substrings[]
#   - Remove first element of string
# - Return substrings[]

def substrings_at_start(string)
  susbtrings = []
  string.size.times do |count|
    susbtrings << string.slice(0, count + 1)
  end
  susbtrings
end

def substrings(string)
  arr_susbtrings = []
  string.size.times do |count|
    substring = string[count..string.size - 1]
    arr_susbtrings << substrings_at_start(substring)
  end
  arr_susbtrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
