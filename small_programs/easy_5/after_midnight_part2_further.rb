# - After midnight method:
#   - Split string with ':' as separator
#   - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
#   - Compute total number of minutes (hours * 60 + minutes)
#
# - Before midnight method:
#   - Split string with ':' as separator
#   - Gives an array with arr[0].to_i = hours and arr[1].to_i = minutes
#   - Compute total number of minutes 24*60 - (hours*60 + minutes)
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTES = 60
MINUTES_MAX_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
TIME_REFERENCE = Time.new(2000, 1, 1)

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  time = Time.new(2000, 1, 1, hours, minutes)
  seconds = TIME_REFERENCE - time
  seconds / SECONDS_PER_MINUTES
end

def before_midnight(time_str)
  minutes = after_midnight(time_str)
  (MINUTES_MAX_PER_DAY - minutes) % MINUTES_MAX_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
