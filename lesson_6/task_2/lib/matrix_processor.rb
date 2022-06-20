# frozen_string_literal: true

class MatrixProcessor
  def self.footprint(matrix)
    (matrix.each_with_object([]) do |row, summ|
      index = matrix.index(row)
      summ << matrix.dig(index, index)
    end).sum
  end
end
