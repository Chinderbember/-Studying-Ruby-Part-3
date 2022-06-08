# frozen_string_literal: true

class Group
  include Enumerable
  attr_accessor :users

  def initialize(users_number: 0)
    @users = []
    users_number.times { users << User.new }
  end

  def each(&block)
    users.each(&block)
  end

  class User
    attr_accessor :name, :surname, :patronymic

    def initialize(name: 'default_name',
                   surname: 'default_surname',
                   patronymic: 'default_patronymic')
      @name = name
      @surname = surname
      @patronymic = patronymic
    end
  end
end
