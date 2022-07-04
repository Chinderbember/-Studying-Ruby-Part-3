# frozen_string_literal: true

Dir['./lib/**/*.rb'].each { |file| require file }

p user = User.new(name: 'Иван', surname: 'Иванов', patronymic: 'Иванович', e_mail: '1@yandex.ru')

user.name = 'Пётр'
user.surname = 'Петров'
user.patronymic = 'Петрович'
user.e_mail = 'ppp@yandex.ru'
p user
