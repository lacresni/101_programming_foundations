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
    substring.size == 1 ? false : substring == substring.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
