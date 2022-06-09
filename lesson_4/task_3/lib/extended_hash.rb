class Hash
	def to_json_hash(indent = 0)
		"{\r\n" +
		(to_a.map { |el_fst, el_snd| " " * (indent + 2) + "#{support_met(el_fst, indent + 2)} : #{support_met(el_snd)}"} ).join("\r\n") +
		+ "\r\n" + ' ' * indent + "}"
	end

	def support_met(element, indent = 0)
		if element.respond_to?(:to_str)
			element
		elsif element.respond_to?(:to_hash)
			element.to_json_hash(indent + 2)
		elsif element.respond_to?(:to_ary)
			'[' + (element.map { |el| support_met(el, indent + 2)}).join(', ') + ']'
		elsif Numeric === element
			element
		elsif FalseClass === element || TrueClass == element
			element.to_s
		end
	end

end
