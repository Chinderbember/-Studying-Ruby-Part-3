matrix_obj = [
	[1, 2, 3, 4],
	[4, 5, 6, 7],
	[1, 5, 5, 7],
	[2, 5, 6, 9]
]

def footprint(matrix)
	(matrix.each_with_object([]) do |row, summ|
		index = matrix.index(row)
		summ << matrix.dig(index, index)
	end).sum
end

puts footprint(matrix_obj)