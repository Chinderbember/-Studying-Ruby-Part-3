EDINITSY = %w[I II III IV V VI VII VIII IX]
DESYATKI = %w[X XX XXX XL L LX LXX LXXX XC]
SOTNI = %w[C CC CCC CD D DC DCC DCCC CM]
TYSYACHI = %w[M MM MMM]
SUPPORT_ARR = [EDINITSY, DESYATKI, SOTNI, TYSYACHI]

ARABIC = [1000, 500, 100, 50, 10, 5, 1]
def roman(number, divider = 1000)
	
	result = (number / divider).positive? ? SUPPORT_ARR[Math.log10(divider)][number / divider - 1] : ""
	result  + 
	 (divider == 1 ? '' : roman(number - (number / divider) * divider  , divider / 10))
	
end

p roman(3999)