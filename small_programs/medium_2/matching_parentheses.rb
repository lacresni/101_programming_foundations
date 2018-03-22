def balanced?(string, opening_char = '(', closing_char = ')')
  result = true

  if opening_char == closing_char
    # deal with "" and ''
    result = string.count(opening_char).even?
  else
    result = false unless string.count(opening_char) ==
                          string.count(closing_char)

    counter = 0
    string.each_char do |char|
      counter += 1 if char == opening_char
      counter -= 1 if char == closing_char
      result = false if counter < 0
    end
  end

  result
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

p balanced?('arr[3]', '[', ']') == true
p balanced?('arr][3]', '[', ']') == false

p balanced?('"hello"', '"', '"') == true
p balanced?('"hello""', '"', '"') == false
