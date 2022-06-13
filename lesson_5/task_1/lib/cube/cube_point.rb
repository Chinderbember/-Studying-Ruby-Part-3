# frozen_string_literal: true

class Cube
  class Point
    attr_accessor :x, :y, :z

    # rubocop:disable Naming/MethodParameterName
    def initialize(x:, y:, z:)
      @x = x
      @y = y
      @z = z
    end
    # rubocop:enable Naming/MethodParameterName

    def ===(point)
      (x == point.x) && (y == point.y) && (z == point.z)
    end
  end
end
