# frozen_string_literal: true

require_relative 'lib/file_processing_class'

output = FileProcessing.check_and_fill(ARGV.first, ARGV[1])
puts output if output.is_a?(String)
