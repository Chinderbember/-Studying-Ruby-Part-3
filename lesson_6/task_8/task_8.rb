# frozen_string_literal: true

# Вообще для коротких файлов программа пишется в 2 строчки:
# mixed_file = File.new('mixed_file.txt', 'w')
# File.readlines(ARGV.first).shuffle!.each { |line| mixed_file.puts line}
# Но, помня предостережение об использовании оперативной памяти, я построил программу таким
# образом, что бы изначальный файл обрабатывался построчно
require_relative 'lib/extended_file'

count = File.linescount(ARGV.first)

lines_rand_indexes = [*1..count].shuffle!

old_file_ext = File.extname(ARGV.first)
new_file_name = "#{ARGV.first[0..ARGV.first.size - old_file_ext.size - 1]}_mixed#{old_file_ext}"

File.open(new_file_name, 'w') do |file|
  loop do
    rand_line_index = lines_rand_indexes.shift
    rand_line = File.str(ARGV.first, rand_line_index)
    file.puts rand_line
    break if lines_rand_indexes.empty?
  end
end
