class Plane
	
attr_reader :flying

	def initialize
		@flying = true
	end
	
	def take_off
		@flying = true
		self
	end	

	def flying?
		@flying 
	end

	def land!
		@flying = false
		self
	end

end
