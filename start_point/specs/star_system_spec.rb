require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../planet')
require_relative('../star_system')

class TestStarSystem < Minitest::Test

  def setup
    @earth = Planet.new("Earth", 12756, 149.6, 1)
    @jupiter = Planet.new("Jupiter", 142796, 778.3, 67)
    @mars = Planet.new("Mars", 6787, 227.9, 2)
    @mercury = Planet.new("Mercury", 4878, 57.9, 0)
    @neptune = Planet.new("Neptune", 48600, 4497.1, 13)
    @pluto = Planet.new("Pluto", 2274, 5913, 4)
    @saturn = Planet.new("Saturn", 120660, 1427.0, 62)
    @uranus = Planet.new("Uranus", 51118, 2871.0, 27)
    @venus = Planet.new("Venus", 12104, 108.2, 0)

    @planets = [@earth, @jupiter, @mars, @mercury, @neptune, @pluto, @saturn, @uranus, @venus]
    @solar_system = StarSystem.new("Solar System", @planets)
  end

  def test_has_name
    assert_equal("Solar System", @solar_system.name)
  end

  def test_has_planets
    assert_equal(9, @solar_system.planets.count)
  end

  def test_planet_names
    expected_names = ["Earth", "Jupiter", "Mars", "Mercury", "Neptune", "Pluto", "Saturn", "Uranus", "Venus"]
    assert_equal(expected_names, @solar_system.planet_names)
  end
  #
  def test_get_planet_by_name
    result = @solar_system.get_planet_by_name("Mars")
    assert_equal(@mars, result)
  end
  #
  # def test_get_largest_planet
  #   result = @solar_system.get_largest_planet
  #   assert_equal(@jupiter, result)
  # end
  #
  # def test_get_smallest_planet
  #   result = @solar_system.get_smallest_planet
  #   assert_equal(@pluto, result)
  # end
  #
  # def test_get_planets_with_no_moons
  #   expected_planets = [ @mercury, @venus ]
  #   result = @solar_system.get_planets_with_no_moons
  #   assert_equal(expected_planets, result)
  # end
  #
  # def test_get_names_of_planet_with_more_than_four_moons
  #   expected_names = ["Jupiter", "Neptune", "Saturn", "Uranus"]
  #   result = @solar_system.get_planets_with_more_moons(4)
  #   assert_equal(expected_names, result)
  # end
  #
  # def test_number_of_planets_less_than_1billion_km_from_sun
  #   result = @solar_system.get_number_of_planets_closer_than(1000)
  #   assert_equal(5, result)
  # end

  # OPTIONAL - MAY REQUIRE LOOKING UP THE DOCS

  # def test_total_number_of_moons
  #   result = @solar_system.get_total_number_of_moons
  #   assert_equal(176, result)
  # end
  #
  # def test_planet_names_sorted_by_increasing_distance_from_sun
  #   expected_names = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
  #   assert_equal(expected_names, @solar_system.get_planet_names_sorted_by_increasing_distance_from_sun)
  # end
  #
  # def test_planet_names_sorted_by_size_decreasing
  #   expected_names = ["Jupiter", "Saturn", "Uranus", "Neptune", "Earth", "Venus", "Mars", "Mercury", "Pluto"]
  #   assert_equal(expected_names, @solar_system.get_planet_names_sorted_by_size_decreasing)
  # end

end
