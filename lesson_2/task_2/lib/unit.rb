class Unit

	# Данный хэш содержит информацию о максимальном количестве тех или иных специалистов
	
	MAX = { boss: 1, backender: 2, frontender: 2, tester: 1, designer: 1 }
	# Хэш spec_number содержит информацию о текущем количестве тех или иных специалистов 
	# в коллективе по аналогии с хэшом - константой выше
	attr_accessor :list, :spec_number
	def initialize
		@list = []
		@spec_number = { boss: 0, backender: 0, frontender: 0, tester: 0, designer: 0 }
	end

	def vacant?(role)
		spec_number[role] < MAX[role]
	end

	def add_employee(role:, surname:, name:)
		if vacant?(role)
			list << Employee.new(role: role, surname: surname, name: name)
			spec_number[role] += 1 
		else
			warn "role #{role} is not vacant!"
	  end
	end

	def delete_employee(position_in_list)
		spec_number[list[position_in_list - 1].role] -= 1
		list.delete_at(position_in_list - 1)
	end

	def change_employee(position_in_list:, new_name:, new_surname:)
		list[position_in_list - 1].name = new_name
		list[position_in_list - 1].surname = new_surname
	end

	def showlist
		sorted_list = list.sort do |person_fst, person_snd| 
			if person_fst.surname == person_snd.surname
			  person_fst.name <=> person_snd.name
			else
				person_fst.surname <=> person_snd.surname
			end
		end
		sorted_list.each_with_index { |person, i| puts "#{i + 1}. #{person}" }
	end
	
end

require_relative 'unit/employee'
