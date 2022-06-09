# frozen_string_literal: true

class Hash
  # rubocop:disable Style/StringConcatenation
  def to_json(indent = 0)
    "{\r\n" +
      (to_a.map do |key, value|
         ' ' * (indent + 2) + "#{supp_met(key, indent + 2)} : #{supp_met(value)}"
       end).join("\r\n") +
      "\r\n" +
      ' ' * indent +
      '}'
  end

  def supp_met(element, indent = 0)
    if element.respond_to?(:to_hash)
      element.to_json(indent + 2)
    elsif element.respond_to?(:to_ary)
      '[' +
        (element.map { |el| supp_met(el, indent + 2) }).join(', ') +
        ']'
    else
      element.to_s
    end
  end
end
# rubocop:enable Style/StringConcatenation
