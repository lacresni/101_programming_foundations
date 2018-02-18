# - Convert input floating point number:
#   - angle in degrees = nb.to_i
#   - minutes = (nb - angle) * 60
#   - seconds = (minutes - minutes.to_i) * 60
# - Format string with
#        format('%d#{DEGREE}%02d\'%02d"',angle, minutes.to_i, seconds.to_i )
MAX_DEGREES = 360
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTES = 60
DEGREE = "\xC2\xB0"

def dms(float_nb)
  # modulo deals with negative numbers
  float_nb %= MAX_DEGREES
  degree = float_nb.to_i
  minutes = (float_nb - degree) * MINUTES_PER_DEGREE
  seconds = (minutes - minutes.to_i) * SECONDS_PER_MINUTES

  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes.to_i, seconds.to_i)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00") || dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(390) == %(30°00'00")
p dms(-76.73) == %(283°16'11")
