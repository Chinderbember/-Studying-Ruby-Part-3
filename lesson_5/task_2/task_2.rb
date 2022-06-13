class String
	def ru_en_alphabet_only?
		(chars.reject do |char|
			('a'..'z').include?(char) || ('а'..'я').include?(char)
		end).empty? and (self != '')
	end
end

words = []
10.times do |iteration_num|
	print "Введите слово №#{iteration_num + 1}:  "
	word = gets.chomp
	if word.ru_en_alphabet_only?
		words << word
	else
		puts 'Ошибка! Слово должно состоять только из символов русского и английского алфавита.'
		redo
	end
end

words.each_with_index do |word, index|
	puts "#{index + 1}. #{word}"
end