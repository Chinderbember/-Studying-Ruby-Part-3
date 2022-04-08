if File.exist?(ARGV.first)
	puts 'File exists'
else
	file = File.new(ARGV.first, 'w')
	file.write('1' * ARGV[1].to_i)
end
