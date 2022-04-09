class FileProcessing
	def self.minmax_lines(file_path)
		lines = File.readlines(file_path)
		lines_sizes = lines.map(&:size)
		min_size, max_size = lines_sizes.minmax
		result_max = "Максимальная длинна строки: #{max_size}\r\n" 
		result_max += "Строки с максимальной длинной:\r\n"

		result_min = "Минимальная длинна строки: #{min_size}\r\n" 
		result_min += "Строки с минимальной длинной:\r\n"

		lines.each_with_index do |line, index| 
			if lines_sizes[index] == max_size
				result_max += line
			elsif lines_sizes[index] == min_size
				result_min += line
			end
		end
		result = result_max + "\r\n" * 2 + result_min
	end
end