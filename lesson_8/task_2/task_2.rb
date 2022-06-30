class Fleet
	ClassesInstMets = [%i[rockets torpedos location], %i[rockets location], %i[hold crane location] ]

	Submarine, RocketCruzer, MilitaryTransport = 
	ClassesInstMets.map do |class_methods|
		 Class.new(superclass = Struct.new(*class_methods, keyword_init: true)) do
  			def self.new(params)
			    location = params[:location]
				  if Cells.status(x: location[:x], y: location[:y])
				  	Cells.set_status(x: location[:x], y: location[:y], free: false)
				    super
				  else
				    warn 'Chosen coordinates are busy!'
				  end
	  	  end
		  end
	end

	class Cells
		MAP_SIZE = 10
		ALL_CELLS = [*1..MAP_SIZE].reduce([]) { |total_arr, x| total_arr + [*1..MAP_SIZE].map {|y| [x, y] } }
		@@cells_hash = (ALL_CELLS.zip Array.new(100) { true } ).to_h

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

p sub = Fleet::Submarine.new(rockets: 1, torpedos: 4, location: {x: 5, y: 7})
p rocket_cruiser = Fleet::RocketCruzer.new(rockets: 10, location: {x: 6, y: 7})
p military_transport = Fleet::MilitaryTransport.new(hold: 1, crane:1, location: {x: 6, y: 7})




