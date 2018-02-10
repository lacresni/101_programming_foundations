def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  temp_arr = string.downcase.chars
  temp_arr.select! do |char|
    ('a'..'z').cover?(char) || ('0'..'9').cover?(char)
  end
  palindrome?(temp_arr.join)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
