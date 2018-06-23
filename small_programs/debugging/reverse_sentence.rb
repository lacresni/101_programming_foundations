def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    # reversed_words = words[i] + reversed_words
    # => in `+': no implicit conversion of Array into String (TypeError)
    reversed_words = [words[i]] + reversed_words
    # Another possible solution is to use Array#unshift method
    # reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
