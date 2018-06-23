def neutralize(sentence)
  words = sentence.split(' ')
  # words.each do |word|
  #   words.delete(word) if negative?(word)
  # end
  # words.join(' ')

  # My initial solution
  # neutralized = words.each_with_object([]) do |word, arr|
  #   arr << word unless negative?(word)
  # end
  # neutralized.join(' ')

  # Two other possible solutions
  # words.select! { |word| negative?(word) == false }
  words.reject! { |word| negative?(word) }

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
