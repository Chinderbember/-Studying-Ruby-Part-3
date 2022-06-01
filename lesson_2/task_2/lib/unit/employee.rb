# frozen_string_literal: true

class Unit
  class Employee
    attr_accessor :role, :surname, :name

    def initialize(role:, surname:, name:)
      @role = role
      @surname = surname
      @name = name
    end

    def to_s
      "#{role} - #{surname} #{name}"
    end
  end
end
