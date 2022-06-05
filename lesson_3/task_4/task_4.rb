# frozen_string_literal: true

require_relative 'lib/integer_extension'

Integer.include RomanNumbers

p 1789.roman
