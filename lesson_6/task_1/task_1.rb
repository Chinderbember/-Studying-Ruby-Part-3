# frozen_string_literal: true

require_relative 'lib/extended_array'

loop do
  print 'Enter number between 1 and 10 (both borders included): '
  number = gets.chomp.to_i
  result = Array.symm(number)
  if result
    p result
    break
  else
    warn 'Number is out range! Please enter again.'
    puts
  end
end
