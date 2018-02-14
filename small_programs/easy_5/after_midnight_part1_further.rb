# How would you approach this problem if you were allowed to use ruby's
# Date and Time classes? Suppose you also needed to consider the day of week?
# (Assume that delta_minutes is the number of minutes before or after midnight
# between Saturday and Sunday; in such a method,
# a delta_minutes value of -4231 would need to produce a return value
# of Thursday 01:29.)
SECONDS_PER_MINUTES = 60

def time_of_day(int)
  # Choose any date that is a sunday
  reference = Time.new(2018, 2, 11)

  time = reference + int * SECONDS_PER_MINUTES
  time.strftime("%A %H:%M")
end

p time_of_day(0) == "Sunday 00:00"
p time_of_day(-3) == "Saturday 23:57"
p time_of_day(35) == "Sunday 00:35"
p time_of_day(-1437) == "Saturday 00:03"
p time_of_day(3000) == "Tuesday 02:00"
p time_of_day(800) == "Sunday 13:20"
p time_of_day(-4231) == "Thursday 01:29"
