class Hash
	def to_json(indent = 0)
		"{\r\n" +
		(to_a.map { |key, value| " " * (indent + 2) + "#{support_met(key, indent + 2)} : #{support_met(value)}"} ).join("\r\n") +
		"\r\n" + 
		' ' * indent +
		"}"
	end

	def support_met(element, indent = 0)

		if element.respond_to?(:to_str)
			element
		elsif element.respond_to?(:to_hash)
			element.to_json(indent + 2)
		elsif element.respond_to?(:to_ary)
			'[' + (element.map { |el| support_met(el, indent + 2)}).join(', ') + ']'
		# Вообще наверное везде надо было respond_to? сделать, но я подумал, что наврятли кто-то будет выдумывать свой класс вместо чисел, true или false 
		elsif Numeric === element
			element
		elsif FalseClass === element || TrueClass == element
			element.to_s
		end
		
	end

end
