class Dir
	def self.short_entries(path)
		content = Dir.entries(path).reject { |el| File.file?(File.join(path, el)) }
		content.slice!(0..1)
		content_copy = content.dup
		# content.reduce(content_copy) {|total, el|  total << short_entries(File.join(path, el)) }
		content.reduce(content_copy) {|total, el|  total + short_entries(File.join(path, el)) }
	end

	def entries_plus_sub(path)


	end
end

p Dir.entries('..')
p Dir.short_entries('..')

