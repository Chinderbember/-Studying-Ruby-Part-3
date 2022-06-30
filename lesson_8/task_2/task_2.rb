class Fleet
	# Submarine = Struct.new(:rockets, :torpedos, :location)
	RocketCruzer = Struct.new(:rockets, :location)
	MilitaryTransport = Struct.new(:hold, :crane, :location)

	# class_arr = [Submarine, RocketCruzer, MilitaryTransport]
	# Submarine, RocketCruzer, MilitaryTransport = 
	# (class_arr.map do |klass|  
	#   def klass.new(*params)
	#     location = params.last
	# 	  if Cells.status(x: location[:x], y: location[:y])
	# 	    super(params[0], params[1], params[2]) 
	# 	  else
	# 	    warn 'Chosen coordinates are busy!'
	# 	  end
	#   end
	#   klass
 #  end)
 
  class Submarine < Struct.new(:rockets, :torpedos, :location)
  	def self.new(*params)
	    location = params.last
		  if Cells.status(x: location[:x], y: location[:y])
		    super(params[0], params[1], params[2]) 
		  else
		    warn 'Chosen coordinates are busy!'
		  end
	  end
	end


	

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
Fleet::Cells.set_status(x: 5, y: 7, free: false)
p sub = Fleet::Submarine.new(1, 4, {x: 5, y: 7})
p Fleet::Cells.list_with_status

