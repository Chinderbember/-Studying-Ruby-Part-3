# frozen_string_literal: true

class String
  def ru_en_alphabet_only?
    (chars.reject do |char|
      ('a'..'z').include?(char) || ('а'..'я').include?(char)
    end).empty? and (self != '')
  end
end
