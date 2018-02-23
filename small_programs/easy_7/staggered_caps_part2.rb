def staggered_case(string, part1_behavior: false)
  valid_char = ('a'..'z').to_a + ('A'..'Z').to_a

  need_cap = false
  arr_char = string.chars.map do |char|
    if valid_char.include?(char)
      need_cap = !need_cap
      need_cap ? char.upcase : char.downcase
    else
      need_cap = !need_cap if part1_behavior
      char
    end
  end
  arr_char.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', part1_behavior: true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', part1_behavior: true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', part1_behavior: true) == 'IgNoRe 77 ThE 444 NuMbErS'
