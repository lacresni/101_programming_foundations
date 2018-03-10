# - Create an array of n elements having values 0 (lights[])
# - Iterate from 1 to n
#   - For each iteration (nb)
#     - Switch lights[] elements at index % 'nb'
# - Find indexes in lights[] where value is 1

def initialize_lights(nb_elements)
  lights = []
  nb_elements.times { lights << 0 }
  lights
end

def switch_light(light_state)
  light_state == 1 ? 0 : 1
end

def find_lights_on(lights_arr)
  lights_on = []
  lights_arr.each_with_index do |value, index|
    lights_on << index + 1 if value == 1
  end
  lights_on
end

def switch_n_lights(lights_arr, modulo)
  (0...lights_arr.size).each do |index|
    if (index + 1) % modulo == 0
      lights_arr[index] = switch_light(lights_arr[index])
    end
  end
  lights_arr
end

def switch_lights(int_n)
  lights = initialize_lights(int_n)

  1.upto(int_n) do |modulo|
    lights = switch_n_lights(lights, modulo)
  end

  find_lights_on(lights)
end

p switch_lights(5) == [1, 4]
p switch_lights(10) == [1, 4, 9]
