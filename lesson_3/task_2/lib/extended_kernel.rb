# frozen_string_literal: true

module Kernel
  COLORS = {
    red: 'красный',
    orange: 'оранжевый',
    yellow: 'желтый',
    green: 'зеленый',
    blue: 'голубой',
    indigo: 'синий',
    violet: 'фиолетовый'
  }.freeze
  COLORS.each do |method, value|
    define_method method do
      value
    end
  end
end
