class Vector

	attr_accessor :start_point, :end_point

	def initialize(x_start:, y_start:, x_end:, y_end:)
		@start_point = Point.new(x: x_start, y: y_start)
		@end_point = Point.new(x: x_end, y: y_end)
	end

	def distance
		Math.sqrt( (end_point.x - start_point.x)**2 + (end_point.y - start_point.y)**2)
	end

	class Point

		attr_accessor :x, :y

		def initialize(x:, y:)
			@x = x
			@y = y
		end

	end

end

vector = Vector.new(x_start: -44, y_start: 343, x_end: 321, y_end: -54)
p vector.start_point
p vector.end_point
p vector.distance