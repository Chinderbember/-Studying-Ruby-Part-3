class User
	module Checkable

		class << self 
		  # nsp is name, surname, patronymic
			ALLOWED_CHARS_FOR_NSP = [*'а'..'я'] + ['ё'] + [*'А'..'Я'] 

			def check_nsp(data)
				data.to_s.chars.all? { |char| ALLOWED_CHARS_FOR_NSP.include? char }
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

	end
end
