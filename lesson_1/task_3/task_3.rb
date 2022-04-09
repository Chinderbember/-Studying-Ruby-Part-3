# frozen_string_literal: true

require_relative 'lib/file_processing_class'

puts FileProcessing.minmax_lines(ARGV.first)
