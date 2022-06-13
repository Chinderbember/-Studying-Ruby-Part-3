# frozen_string_literal: true

require_relative 'cube/cube_point'
# rubocop:disable Style/ClassVars, Style/CaseEquality
class Cube
  @@cubes = []
  attr_accessor :center_point, :edge_size

  def cubes_list
    @@cubes
  end

  def initialize(center_x:, center_y:, center_z:, edge_size:)
    @center_point = Point.new(x: center_x, y: center_y, z: center_z)
    @edge_size = edge_size
    @@cubes << self
  end

  def these_params?(center_x:, center_y:, center_z:, edge_size:)
    (center_point === Point.new(x: center_x, y: center_y, z: center_z)) &&
      (self.edge_size == edge_size)
  end

  def self.new(center_x:, center_y:, center_z:, edge_size:)
    search_result = @@cubes.select do |cube|
      cube.these_params?(center_x: center_x, center_y: center_y, center_z: center_z,
                         edge_size: edge_size)
    end

    search_result.first || super(center_x: center_x, center_y: center_y, center_z: center_z, edge_size: edge_size)
  end
end

# rubocop:enable Style/ClassVars, Style/CaseEquality
