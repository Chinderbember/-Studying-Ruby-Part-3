class User
	attr_reader :name, :surname, :patronymic, :email
	[:name=, :surname=, :patronymic=, :e_mail=].each do |setter|
		define_method(setter) do |value|
			inst_var = '@' + setter.to_s[0..-2]
			if setter == :e_mail=
				instance_variable_set(inst_var, value) if check_e_mail(value)
			else
				instance_variable_set(inst_var, value) if check_nsp(value)
			end
		end
	end

	def initialize(name:, surname:, patronymic:, e_mail:)
		send(:name=, name) 
		send(:surname=, surname)
		send(:patronymic=, patronymic)
		send(:e_mail=, e_mail)
	end 
	# nsp = name, surname, patronymic
	private 

	ALLOWED_CHARS_FOR_NSP = [*'а'..'я'] + ['ё'] + [*'А'..'Я'] 
	def check_nsp(data)
		data.chars.all? { |char| ALLOWED_CHARS_FOR_NSP.include? char }
	end
	ALLOWED_CHARS_FOR_EMAIL = [*'A..Z'] + [*'a'..'z'] + [*'0'..'9'] + ['_', '-', '.', '@']

	def check_e_mail(e_mail)
		divided_e_mail = (e_mail.to_s).split('@', 2)

		if divided_e_mail.size == 2
			condition_fst =  divided_e_mail.first.chars.all? do |char| 
				(ALLOWED_CHARS_FOR_EMAIL[0..-3].include? char )  
			end

			second_part_splitted = divided_e_mail.last.split('.', 2)
			if second_part_splitted.size == 2 && condition_fst
				condition_snd = second_part_splitted.map(&:chars).flatten.all? do |char|
					(ALLOWED_CHARS_FOR_EMAIL[0..-3].include? char )
				end
				condition_fst && condition_snd
			end
		end
	end

end

p user = User.new(name: 'Иван', surname: 'Иванов', patronymic: 'Иванович', e_mail: 'iii@yandex.ru')

user.name = 'Пётр'
user.surname = 'Петров'
user.patronymic = 'Петрович'
user.e_mail = 'ppp@yandex.ru'
p user

