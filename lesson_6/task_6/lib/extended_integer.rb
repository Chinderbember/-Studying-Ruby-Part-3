# frozen_string_literal: true

class Integer
  def to_a
    to_s(2).split ''
  end
end
