# - Method to get time of day string from a positive integer:
#   - Compute number of hours and remainding minutes from input number
#     (use #divmod)
#   - Format string properly (use format method)
# - Deal with negative numbers
#   - nb_minutes = 24*60 - integer.abs
#   - get_time_of_day(nb_minutes)
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(int)
  hours, minutes = int.divmod(MINUTES_PER_HOUR)
  hours %= HOURS_PER_DAY # deal with negative values
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
