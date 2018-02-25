# - Get all substrings from input string with 'substrings' method
#   - Store in an array
# - Select all strings that are palindromic in the substrings array
#   - If substring size is one, reject it
#   - Compare substring with reversed substring for selection

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
    arr_susbtrings.concat(substrings_at_start(substring))
  end
  arr_susbtrings
end

def palindromes(string)
  substrings(string).select do |substring|
    substr = substring.downcase.delete("^a-z")
    substr.size > 1 ? substr == substr.reverse : false
  end
end

p palindromes('Abc-bA') == ['Abc-bA', 'bc-b']
