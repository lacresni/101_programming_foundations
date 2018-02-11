# - Century method(year)
#   - year - 1 % 100
# - Format string method(century)
#   - century % 100
#     - if 11 => 'th'
#     - elsif 12 => 'th'
#     - elsif 13 => 'th'
#     - elsif Ends by 1 => 'st'
#     - elsif Ends by 2 => 'nd'
#     - elsif Ends by 3 => 'rd'
#     - elsif Ends by (4..0) => 'th'

def compute_century(year)
  ((year - 1) / 100) + 1
end

def get_century_suffix(century_int)
  return 'th' if [11, 12, 13].include?(century_int % 100)

  case century_int % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  century_int = compute_century(year)
  century_suffix = get_century_suffix(century_int)
  "#{century_int}#{century_suffix}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10_103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11_201) == '113th'
