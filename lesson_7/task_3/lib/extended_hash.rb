# frozen_string_literal: true

class Hash
  # Метод предназначен для хэшей, чьи значения - массивы.
  # Метод возвращает новый хэш, где :
  # ключи - это уникальные элементы среди массивов - значений  получателя ,
  # значения - это количество вхождений этих элементов в массивы - значения получателя
  def invert_with_count
    hash_new_keys = values.flatten.uniq
    hash_new_values = Array.new(hash_new_keys.size) { 0 }

    hash_new = hash_new_keys.zip(hash_new_values).to_h

    values.each do |arr|
      arr.each { |el| hash_new[el] += 1 }
    end
    hash_new
  end

  # Метод возвращает дважды отсортированный хэш: сначала по значениям,
  # потом для каждого значения по ключам
  def double_sort_v_k
    new_hash_sorted = (sort_by { |_key, value| value }).to_h

    final_hash = {}

    new_hash_sorted.each_value do |value_for_select|
      hash_part = new_hash_sorted.select { |_key, value| value == value_for_select }
                                 .sort_by { |key, _value| key }
                                 .to_h
      final_hash.merge!(hash_part)
    end
    final_hash
  end
end
