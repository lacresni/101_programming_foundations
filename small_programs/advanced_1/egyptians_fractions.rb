def egyptian(rational)
  return [1] if rational == Rational(1, 1)

  fractions = []
  temp = rational
  denominator = 1

  loop do
    if temp >= Rational(1, denominator)
      fractions << denominator
      temp -= Rational(1, denominator)
    end
    denominator += 1

    break if temp.numerator == 1 && temp <= Rational(1, denominator)
  end

  fractions << temp.denominator
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(denominators)
  fraction = Rational(0)
  denominators.each do |denominator|
    fraction += Rational(1, denominator)
  end
  fraction
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
p unegyptian([1, 2, 3, 4, 5]) == Rational(137, 60)
