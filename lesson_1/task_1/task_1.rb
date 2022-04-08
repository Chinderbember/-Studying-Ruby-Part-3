	
def result_preparing
	File.open(file_path) do |file| 
		if File.zero?(file)
			["ERROR: file is empty"]
		else
			lines = file.map(&:itself)
			random_index = rand(0..lines.size - 1)
			lines[random_index]
	end
end