# frozen_string_literal: true

class Array
  def for(number = nil, &block)
    if number
      number.times { each(&block) }
    else
      loop { each(&block) }
    end
  end
end
