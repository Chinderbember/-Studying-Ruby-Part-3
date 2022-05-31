# frozen_string_literal: true

class Vector
  class Point
    attr_accessor :x, :y

    # rubocop:disable Naming/MethodParameterName
    def initialize(x:, y:)
      @x = x
      @y = y
    end
    # rubocop:enable Naming/MethodParameterName
  end
end
