# frozen_string_literal: true

require_relative 'lib/extended_string'

words = {}

10.times do |iteration_num|
  print "Введите слово №#{iteration_num + 1}:  "
  word = gets.chomp
  if word.ru_en_alphabet_only?
    if words.keys.include?(word)
      words[word] += 1
    else
      words[word] = 1
    end
  else
    puts 'Ошибка! Слово должно состоять только из символов русского и английского алфавита.'
    redo
  end
end

words
  .sort_by { |key, _value| key }
  .each_with_index do |pair, index|
  puts "#{index + 1}. #{pair.first}" + (pair.last != 1 ? "(#{pair.last})" : '')
end
