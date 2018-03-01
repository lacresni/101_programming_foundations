# - Compute average of three integers
#   - (score1 + score2 + score3) / 3
# - Translate the average into a grade by comparison

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3

  case mean
  when (0...60) then "F"
  when (60...70) then "D"
  when (70...80) then "C"
  when (80...90) then "B"
  else                "A"
  end
end

p get_grade(105, 105, 105) == "A"
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(90, 90, 90) == "A"
p get_grade(90, 90, 89) == "B"
