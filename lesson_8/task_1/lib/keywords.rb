# frozen_string_literal: true

require 'set'

class Keywords < Set
  def <<(keyword)
    super keyword.downcase
  end

  def delete(keyword)
    super keyword.downcase
  end
end
