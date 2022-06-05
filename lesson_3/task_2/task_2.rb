module Kernel
	COLORS = {
		red: 'красный',
		orange: 'оранжевый',
		yellow: 'желтый',
		green: 'зеленый',
		blue: 'голубой',
		indigo: 'синий',
		violet: 'фиолетовый'
	}
	COLORS.each do |method , value|
		define_method method do 
			value
		end
	end
end

Kernel::COLORS.each do |method, _value|
	puts send(method)
end