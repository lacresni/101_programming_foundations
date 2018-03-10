require "pry"
# - Create an array of n elements having values 0 (lights[])
# - Iterate from 1 to n
#   - For each iteration (nb)
#     - Switch lights[] elements at index % 'nb'
# - Find indexes in lights[] where value is 1

def initialize_lights(nb_elements)
  lights = Hash.new("off")
  nb_elements.times { |num| lights[num + 1] = "off" }
  lights
end

def switch_light(light_state)
  light_state == "on" ? "off" : "on"
end

def find_lights_on(lights_hash)
  lights_hash.select { |_, value| value == "on" }.keys
end

def switch_n_lights(lights_hash, modulo)
  (1..lights_hash.size).each do |index|
    if index % modulo == 0
      lights_hash[index] = switch_light(lights_hash[index])
    end
  end
  lights_hash
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
p switch_lights(1_000)
