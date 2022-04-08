# frozen_string_literal: true

require_relative 'lib/class_rand'

output = Rand.random_line(ARGV.first)
p output if output
