# - Split the string to retrieve each words
# - Iterate through the array of words
#   - For each word, capitalize word
# - Join returned array by using spaces as a separator

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# #######################################################################
puts 'Further - Solution 1'

def word_cap_1(string)
  arr = string.downcase.split.map! do |word|
    upcase_word = []
    word.chars.each_with_index do |char, index|
      upcase_word << (index == 0 ? char.upcase : char)
    end
    upcase_word.join
  end

  arr.join(' ')
end

p word_cap_1('four score and seven') == 'Four Score And Seven'
p word_cap_1('the javaScript language') == 'The Javascript Language'
p word_cap_1('this is a "quoted" word') == 'This Is A "quoted" Word'

# #######################################################################
puts 'Further - Solution 2'

def word_cap_2(string)
  arr = string.downcase.split.map! do |word|
    word[0] = word[0].upcase
    word
  end
  arr.join(' ')
end

p word_cap_2('four score and seven') == 'Four Score And Seven'
p word_cap_2('the javaScript language') == 'The Javascript Language'
p word_cap_2('this is a "quoted" word') == 'This Is A "quoted" Word'
