class A
	def self.new
		'class A'
		super
	end
end

class B < A
	def self.new
		'class b'
		super
	end
end



p B.new