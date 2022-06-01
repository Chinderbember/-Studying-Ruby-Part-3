# frozen_string_literal: true

require_relative 'lib/unit'

names = %w[Kate John Steve Ann Walter Bill Misha]
surnames = %w[Mist Brawn Will Ast Surge Jek Kull]

puts
p unit = Unit.new
puts

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
puts

unit.delete_employee(2)
puts

unit.showlist
puts
p unit.spec_number
puts

unit.change_employee(position_in_list: 3, new_name: 'Valera', new_surname: 'Gromov')

unit.showlist
puts
p unit.spec_number
puts

unit.add_employee(role: :boss, name: 'Ay', surname: 'Ast')
unit.showlist
puts

unit.filter(role: :frontender)
