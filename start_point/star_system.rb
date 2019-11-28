class StarSystem

  attr_reader :name, :planets

  def initialize (name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map { | planet | planet.name }
  end

  def get_planet_by_name(planet_name)
    @planets.find { | planet | planet.name == planet_name }
  end

def get_largest_planet
  @planets.max { |a , b |a.diameter <=> b.diameter
  }
end

def get_smallest_planet
  @planets.min { |a , b |a.diameter <=> b.diameter
  }
end

def get_planets_with_no_moons
  @planets.find_all { |planet| planet.number_of_moons == 0 }
end
def get_planets_with_more_moons(number)
  mapped_planets = @planets.map { |planet|
    if planet.number_of_moons > number
    planet.name
  end}
  return mapped_planets.compact
end

def get_number_of_planets_closer_than(distance)
  mapped_planets = @planets.map { |planet|
    if planet.distance_from_sun < distance
    planet.name
  end}
  return mapped_planets.compact.length
end


end
