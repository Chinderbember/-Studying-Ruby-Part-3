# frozen_string_literal: true

require_relative 'lib/fiveable'

class Test
  extend Fiveable
end

8.times { p Test.new }
