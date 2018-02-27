def sequence(num)
  return [] if num <= 0
  1.upto(num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0) == []
p sequence(-1) == []
