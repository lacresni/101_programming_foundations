# - Create an empty hash for result with default value 0
# - For each char in the input string
#   - Check if char is included in (a..z) range
#     - if yes, hash[:lowercase] += 1
#   - Check if char is included in (A..Z) range
#     - if yes, hash[:uppercase] += 1
#   - else hash[:neither] += 1
# - Return hash

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }

  string.each_char do |char|
    case char
    when ('a'..'z') then result[:lowercase] += 1
    when ('A'..'Z') then result[:uppercase] += 1
    else result[:neither] += 1
    end
  end

  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
