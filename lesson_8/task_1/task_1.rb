require 'set'

class Keywords < Set 
	def <<(keyword)
		super keyword.downcase
	end

	def delete(keyword)
		super keyword.downcase
	end

end

keywords_arr = %w[sale buy sell]
keywords = Keywords.new(keywords_arr)
keywords << 'Buy'
keywords << 'BUY'
p keywords << 'seller'
p keywords