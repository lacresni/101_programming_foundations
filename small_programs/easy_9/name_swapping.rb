# - Split the string into an array of words
# - Reverse the array
# - Join the array with ', ' separator

def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
