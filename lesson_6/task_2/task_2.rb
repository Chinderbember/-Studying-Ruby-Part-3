# frozen_string_literal: true

require_relative 'lib/matrix_processor'

matrix = [
  [1, 2, 3, 4],
  [4, 5, 6, 7],
  [1, 5, 4, 7],
  [2, 5, 6, 9]
]

puts MatrixProcessor.footprint(matrix)
