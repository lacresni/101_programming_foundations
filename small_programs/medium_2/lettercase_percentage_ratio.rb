def letter_percentages(string)
  hash_count = { lowercase: 0, uppercase: 0, neither: 0 }

  string.each_char do |char|
    case char
    when ('a'..'z') then hash_count[:lowercase] += 1
    when ('A'..'Z') then hash_count[:uppercase] += 1
    else                 hash_count[:neither] += 1
    end
  end

  hash_count.each_with_object({}) do |(key, value), hash|
    hash[key] = 100 * value.to_f / string.size
  end
end

p letter_percentages('abCdef 123') ==
  { lowercase: 50, uppercase: 10, neither: 40 }

p letter_percentages('AbCd +Ef') ==
  { lowercase: 37.5, uppercase: 37.5, neither: 25 }

p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
