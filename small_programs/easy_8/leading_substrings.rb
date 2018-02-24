# - Create an empty array susbtrings[]
# - Iterate string.size number of times
#   - Slice the string (0..n)
#   - Add sliced string to susbtrings[]
# - Return susbtrings[]
def substrings_at_start(string)
  susbtrings = []
  string.size.times do |count|
    susbtrings << string.slice(0, count + 1)
  end
  susbtrings
end

p substrings_at_start('abc') == %w(a ab abc)
p substrings_at_start('a') == %w(a)
p substrings_at_start('xyzzy') == %w(x xy xyz xyzz xyzzy)
