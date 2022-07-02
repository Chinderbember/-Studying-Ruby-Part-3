# frozen_string_literal: true

Dir['lib/**/*.rb'].each { |file| require_relative file }

subs = []
3.times do |counter|
  subs << Fleet::Submarine.new(rockets: rand(1..10), torpedos: rand(1..10), location: { x: 1, y: counter + 1 })
end

rocket_cruisers = []
3.times do |counter|
  rocket_cruisers << Fleet::RocketCruzer.new(rockets: rand(1..10), location: { x: 2, y: counter + 1 })
end

military_transports = []
3.times do |counter|
  military_transports << Fleet::MilitaryTransport.new(hold: 1, crane: 1, location: { x: 3, y: counter + 1 })
end

p subs, rocket_cruisers, military_transports
