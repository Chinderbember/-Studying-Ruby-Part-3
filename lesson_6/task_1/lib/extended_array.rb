# frozen_string_literal: true

class Array
  def self.symm(number)
    [*1..number] + [*1..number - 1].reverse if (1..10).include? number
  end
end
