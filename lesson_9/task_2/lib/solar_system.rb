# frozen_string_literal: true

class SolarSystem
  Object.instance_methods.each { |met| undef_method met }
  PLANETS = %w[Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto].freeze
  PLANETS_NUMBERS = (1..9).to_a.freeze
  PLANETS_AND_NUMBERS = (PLANETS.zip PLANETS_NUMBERS).to_h

  PLANETS_AND_NUMBERS.each do |planet, number|
    define_method(planet) { number }
  end

  def method_missing(*)
    raise NoExistingPlanetException, "Planet doesn't exist"
  end
end
