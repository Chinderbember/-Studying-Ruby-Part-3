class Test
	@@amount = 0

	def self.new
		if @@amount == 5
			warn 'Already created 5 objects of class! More impossible'
		else
			@@amount += 1
			super
		end
	end


end

8.times { p Test.new }