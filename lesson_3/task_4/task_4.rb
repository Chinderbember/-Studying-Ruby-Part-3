ROMAN_DIGITS = { 1000 => 'M',
								 500 => 'D' ,
								 100 => 'C' ,
								 50 => 'L' ,
								 10 => 'X' ,
								 5 => 'V' ,
								 1 => 'I'
								}
ARABIC = [1000, 500, 100, 50, 10, 5, 1]
def roman(number, pos = 0)
	
	ROMAN_DIGITS[ARABIC[pos]] * (number / ARABIC[pos] )  +  (pos == 6 ? '' : roman(number - (number / ARABIC[pos]) * ARABIC[pos]  ,pos + 1))
	
end

p roman(3999)