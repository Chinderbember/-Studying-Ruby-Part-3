#frozen_string_literal: true

require_relative 'lib/vector'

vector = Vector.new(x_start: -44, y_start: 343, x_end: 321, y_end: -54)
p vector.start_point
p vector.end_point
p vector.distance