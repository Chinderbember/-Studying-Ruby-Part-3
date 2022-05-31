class Vector

	attr_accessor :start_point, :end_point

	def initialize(x_start:, y_start:, x_end:, y_end:)
		@start_point = Point.new(x: x_start, y: y_start)
		@end_point = Point.new(x: x_end, y: y_end)
	end

	def distance
		Math.sqrt( (end_point.x - start_point.x)**2 + (end_point.y - start_point.y)**2)
	end

end

require_relative 'vector/point'