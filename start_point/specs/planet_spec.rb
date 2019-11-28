require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../planet')

class TestPlanet < Minitest::Test

  def setup
    @planet = Planet.new("Earth", 12756, 149.6, 1)
  end

  def test_has_name
    assert_equal("Earth", @planet.name)
  end

  def test_has_diameter
    assert_equal(12756, @planet.diameter)
  end

  def test_has_distance_from_sun
    assert_equal(149.6, @planet.distance_from_sun)
  end

  def test_has_number_of_moons
    assert_equal(1, @planet.number_of_moons)
  end

end
