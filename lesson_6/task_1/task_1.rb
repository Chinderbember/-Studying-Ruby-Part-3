print 'Enter number between 1 and 10 (both borders included): '
number = gets.chomp.to_i
if (1..10).include? number
	p ([*1..number] + [*1..number - 1].reverse)
end