require_relative 'lib/unit'

names = %w[Kate John Steve Ann Walter Bill Misha]
surnames = %w[Mist Brawn Will Ast Surge Jek Kull]
p unit = Unit.new
3.times do |count|
	unit.add_employee(role: :backender, name: names[count], surname: surnames[count])
	puts
	unit.showlist
	puts
end

3.times do |count|
	unit.add_employee(role: :frontender, name: names[count + 3], surname: surnames[count + 3])
	puts
	unit.showlist
	puts
end

p unit.spec_number

unit.delete_employee(2)

unit.showlist
p unit.spec_number

unit.change_employee(position_in_list: 3, new_name: "Valera", new_surname: "Gromov")

unit.showlist
p unit.spec_number

unit.add_employee(role: :boss, name: 'Ay', surname: 'Ast')
unit.showlist
