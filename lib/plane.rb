class Plane
	
attr_reader :flying

	def initialize
		@flying = true
	end
	
	def take_off_from(airport)
		airport.clearTTO_plane
	end	

	def flying?
		@flying 
	end

	def land!
		@flying = false
		self
	end


end
