require_relative 'lib/file_processing'

puts FileProcessing.size_format(File.size(ARGV.first))


