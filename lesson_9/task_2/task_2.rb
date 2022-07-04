# frozen_string_literal: true

Dir['lib/**/*.rb'].each { |file| require_relative file }

puts
p SolarSystem.new.Pluto
puts
SolarSystem.new.Ih
