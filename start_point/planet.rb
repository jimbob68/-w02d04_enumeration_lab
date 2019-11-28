class Planet
  attr_reader :name, :diameter, :distance_from_sun, :number_of_moons

  def initialize(name, diameter, distance_from_sun, number_of_moons)
    @name = name
    @diameter = diameter
    @distance_from_sun = distance_from_sun
    @number_of_moons = number_of_moons
  end
end
