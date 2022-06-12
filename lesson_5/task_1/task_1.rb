

class Cube
	@@cubes = []
	attr_accessor :center_point, :edge_size

	def cubes_list
		@@cubes
	end
	class Point
    attr_accessor :x, :y, :z

    # rubocop:disable Naming/MethodParameterName
    def initialize(x:, y:, z:)
      @x = x
      @y = y
      @z = z
    end
    # rubocop:enable Naming/MethodParameterName

    def ===(point)
    	(self.x == point.x) && (self.y == point.y) && (self.z == point.z)
    end
  end

  def self.new(center_x:, center_y:, center_z:, edge_size:)
  	@@cubes ||= @@cubes
  	search_result = @@cubes.select do |cube|	
  									cube.these_params?(center_x: center_x, center_y: center_y, center_z: center_z, edge_size: edge_size)
  									end	

	  if search_result.first 
	  	search_result.first
	  else
	  	super(center_x: center_x, center_y: center_y, center_z: center_z, edge_size: edge_size)
	  end
	end



	def initialize(center_x:, center_y:, center_z:, edge_size:)
		@center_point = Point.new(x: center_x, y: center_y, z: center_z)
		@edge_size = edge_size
		@@cubes << self
	end

	def these_params?(center_x:, center_y:, center_z:, edge_size:)
		(self.center_point === Point.new(x: center_x, y: center_y, z: center_z)) && 
		(self.edge_size == edge_size)
	end

end

cube_fst = Cube.new(center_x: 1, center_y: 4, center_z: 11, edge_size: 3)
cube_snd = Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 3)
cube_thd = Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 4)

cube_fth = Cube.new(center_x: 111, center_y: 4, center_z: 11, edge_size: 4)
p cube_fst.cubes_list

