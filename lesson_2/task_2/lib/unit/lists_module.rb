# frozen_string_literal: true

module ListsModule
  # разбил изначальный метод вывода списка в алфавитном порядке на 2 что бы удобнее было реализовать
  # фильтрацию по должности
  def demoshowlist
    list.sort do |person_fst, person_snd|
      if person_fst.surname == person_snd.surname
        person_fst.name <=> person_snd.name
      else
        person_fst.surname <=> person_snd.surname
      end
    end
  end

  private :demoshowlist

  def showlist
    demoshowlist.each_with_index { |person, i| puts "#{i + 1}. #{person}" }
  end

  def filter(role:)
    demoshowlist
      .select { |person| person.role == role }
      .each_with_index { |person, i| puts "#{i + 1}. #{person}" }
  end
end
