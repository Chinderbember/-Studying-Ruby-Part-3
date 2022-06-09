class Hash
	def to_json_hash(margin = 0)
		"{\r\n" +
		(to_a.map { |el_fst, el_snd| " " * (margin + 2) + "#{support_met(el_fst, margin + 2)} : #{support_met(el_snd)}"} ).join("\r\n") +
		+ "\r\n" + ' ' * margin + "}"
	end

	def support_met(element, margin = 0)
		if element.respond_to?(:to_str)
			element
		elsif element.respond_to?(:to_hash)
			element.to_json_hash(margin + 2)
		elsif element.respond_to?(:to_ary)
			'[' + (element.map { |el| support_met(el, margin + 2)}).join(', ') + ']'
		elsif Numeric === element
			element
		end
	end

end

h = {"first_name" => 32321, "last_name" => "Петрович", "patronymic" => "Сидоров", "params" => {"score" => [1, 3, {"last_name" => "Петрович", "patronymic" => "Сидоров"}], "number" => 762 } }
puts h.to_json_hash
