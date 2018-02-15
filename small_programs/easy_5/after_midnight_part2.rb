# - After midnight method:
#   - Split string with ':' as separator
#   - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
#   - Compute total number of minutes (hours * 60 + minutes)
#
# - Before midnight method:
#   - Split string with ':' as separator
#   - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
#   - Compute total number of minutes 24*60 - (hours*60 + minutes)
MINUTES_PER_HOUR = 60
MINUTES_MAX_PER_DAY = 24 * MINUTES_PER_HOUR

def convert_str_to_int(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  minutes += hours * MINUTES_PER_HOUR
  minutes % MINUTES_MAX_PER_DAY
end

def after_midnight(time_str)
  convert_str_to_int(time_str)
end

def before_midnight(time_str)
  minutes = convert_str_to_int(time_str)
  (MINUTES_MAX_PER_DAY - minutes) % MINUTES_MAX_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
