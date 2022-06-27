# frozen_string_literal: true

require_relative 'lib/extended_dir'
Dir.children_dirs_with_f('C:/Ruby_programs/homework').each do |key, value|
  puts "#{key} => #{value}"
end
