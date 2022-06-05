# frozen_string_literal: true

# rubocop:disable Style/ClassVars
module Fiveable
  @@amount = 0

  def new
    if @@amount == 5
      warn 'Already created 5 objects of class! More impossible'
    else
      @@amount += 1
      super
    end
  end
end
# rubocop:enable Style/ClassVars
