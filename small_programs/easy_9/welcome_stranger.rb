# - Create person's name
#   - Join array with ' ' and store to string variable name
# - Use string interpolation to create greeting message
#   - Get person's name (variable name)
#   - Get title with hash[:title]
#   - Get Occupation with hash[:occupation]
def greetings(arr_name, hash_job)
  name = arr_name.join(' ')
  "Hello, #{name}! Nice to have a #{hash_job[:title]} \
#{hash_job[:occupation]} around."
end

p greetings(%w(John Q Doe), { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
