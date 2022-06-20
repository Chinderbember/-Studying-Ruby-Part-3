# frozen_string_literal: true

range = 1...10
result_arr = []
p range.to_a.each_slice(3) { |arr| result_arr << arr }
p result_arr
