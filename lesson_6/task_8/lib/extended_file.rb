# frozen_string_literal: true

# Не нашёл в File функций на подсчёт количества строк в файле и на вывод строки с заданным номером
# Если вам известно о их существовании в стандартной библиотеке или гемах, отпишите в код-ревью
# пожалуйста
class << File
  def linescount(file)
    count = 0

    File.open(file, 'r') do |f|
      f.each { |_line| count += 1 }
    end

    count
  end

  def str(file, number)
    line = ''
    File.open(file, 'r') do |f|
      number.times do |counter|
        if counter == number - 1
          line = f.gets
          f.rewind
        else
          f.gets
        end
      end
    end
    line
  end
end
