class Fleet
	ClassesCreationArr = [%i[rockets, torpedos location], %i[rockets location], %i[hold crane location] ]

	Submarine, RocketCruzer, MilitaryTransport = 
	ClassesCreationArr.map do |class_methods|
		 Class.new(superclass = Struct.new(*class_methods)) do
  			def self.new(*params)
			    location = params.last
				  if Cells.status(x: location[:x], y: location[:y])
				    super
				  else
				    warn 'Chosen coordinates are busy!'
				  end
	  	  end
		  end
	end

 
 #  Submarine = Class.new(superclass = Struct.new(:rockets, :torpedos, :location)) do
 #  	def self.new(*params)
	#     location = params.last
	# 	  if Cells.status(x: location[:x], y: location[:y])
	# 	    super
	# 	  else
	# 	    warn 'Chosen coordinates are busy!'
	# 	  end
	#   end
	# end


	

	class Cells
		MAP_SIZE = 10
		ALL_POINTS = [*1..MAP_SIZE].reduce([]) { |total_arr, x| total_arr + [*1..MAP_SIZE].map {|y| [x, y] } }
		@@cells_hash = (ALL_POINTS.zip Array.new(100) { true } ).to_h

		class << self
			def list_with_status
				@@cells_hash
			end

			def status(x:, y:)
				@@cells_hash[[x, y]]
			end

			def set_status(x:, y:, free: )
				@@cells_hash[[x, y]] = free
			end

		end
	end

end


Fleet::Cells.list_with_status
Fleet::Cells.set_status(x: 5, y: 7, free: nil)
Fleet::Cells.set_status(x: 6, y: 7, free: nil)
Fleet::Cells.set_status(x: 7, y: 7, free: nil)
p sub = Fleet::Submarine.new(1, 4, {x: 5, y: 7})
p rocket_cruiser = Fleet::RocketCruzer.new(10, {x: 6, y: 7})
p military_transport = Fleet::MilitaryTransport.new(1, 1, {x: 7, y: 7})


