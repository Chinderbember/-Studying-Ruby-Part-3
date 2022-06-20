# frozen_string_literal: true

class Integer
  def to_a(count_type = 2)
    to_s(count_type).split ''
  end
end
