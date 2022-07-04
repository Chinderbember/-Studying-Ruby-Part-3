# frozen_string_literal: true

class User
  attr_reader :name, :surname, :patronymic, :email

  %i[name= surname= patronymic= e_mail=].each do |setter|
    define_method(setter) do |value|
      inst_var = "@#{setter.to_s[0..-2]}"
      if setter == :e_mail=
        instance_variable_set(inst_var, value) if Checkable.check_e_mail(value)
        raise UserException, 'Wrong e-mail format!' unless Checkable.check_e_mail(value)
      elsif Checkable.check_nsp(value)
        instance_variable_set(inst_var, value)
      else
        raise UserException, 'Wrong name or surname or patronymic format!'
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
