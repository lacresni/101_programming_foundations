require 'date'

def friday_13th(year)
  time_arr = []
  1.upto(12) { |month| time_arr << Time.new(year, month, 13) }
  time_arr.select(&:friday?).size
end

def nb_fridays(year)
  month_fridays = Hash.new(0)

  date = Date.new(year, 1, 1)
  nb_days = date.leap? ? 366 : 365

  nb_days.times do
    month_fridays[date.month] += 1 if date.friday?
    date = date.next_day
  end

  month_fridays.values.count(5)
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

p nb_fridays(2018) == 4
p nb_fridays(2000) == 4
p nb_fridays(2004) == 5
