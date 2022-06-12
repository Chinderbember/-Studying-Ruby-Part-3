

class Cube
	attr_accessor :center_point, :edge_size
	class Point
    attr_accessor :x, :y, :z

    # rubocop:disable Naming/MethodParameterName
    def initialize(x:, y:, z:)
      @x = x
      @y = y
      @z = z
    end
    # rubocop:enable Naming/MethodParameterName
  end


	def initialize(center_x:, center_y:, center_z:, edge_size:)
		@center_point = Point.new(x: center_x, y: center_y, z: center_z)
		@edge_size = edge_size
	end

end

p Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 3)