class User
	attr_reader :name, :surname, :patronymic, :email
	[:name=, :surname=, :patronymic=, :e_mail=].each do |setter|
		define_method(setter) do |value|
			inst_var = '@' + setter.to_s[0..-2]
			if setter == :e_mail=
				if Checkable.check_e_mail(value)
					instance_variable_set(inst_var, value) 
				else
					raise UserException.new('Wrong e-mail format!')
				end
			else
				if Checkable.check_nsp(value)
					instance_variable_set(inst_var, value)
				else
					raise UserException.new('Wrong name or surname or patronymic format!')
				end
			end
		end
	end

	def initialize(name:, surname:, patronymic:, e_mail:)
		send(:name=, name) 
		send(:surname=, surname)
		send(:patronymic=, patronymic)
		send(:e_mail=, e_mail)
	end 
end
