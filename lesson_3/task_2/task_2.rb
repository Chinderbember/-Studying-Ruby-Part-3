# frozen_string_literal: true

require_relative 'lib/extended_kernel'

Kernel::COLORS.each do |method, _value|
  puts send(method)
end
