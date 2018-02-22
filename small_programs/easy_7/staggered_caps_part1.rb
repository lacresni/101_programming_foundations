def staggered_case(string, method: 'upcase')
  arr_char = []
  string.chars.each_with_index do |char, index|
    arr_char << if method == 'upcase'
                  (index.even? ? char.upcase : char.downcase)
                else
                  (index.even? ? char.downcase : char.upcase)
                end
  end
  arr_char.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!', method: 'downcase')
p staggered_case('ALL_CAPS', method: 'downcase')
p staggered_case('ignore 77 the 444 numbers', method: 'downcase')
