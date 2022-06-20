# frozen_string_literal: true

p [1, 2, 3, 4, 5].reduce([]) { |result_arr, el| el.odd? ? result_arr << el : result_arr }
