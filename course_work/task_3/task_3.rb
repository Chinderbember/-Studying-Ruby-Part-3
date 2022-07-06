# frozen_string_literal: true

require_relative 'lib/extended_file'

ext = ARGV.first
path = ARGV.last

template = "/**/*#{ext}"

dir_arg = File.join(path, template)

puts Dir[dir_arg].reduce(0) { |count, file| count + File.linescount(file) }
