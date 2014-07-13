require_relative 'planename'

class Plane

include PlaneNamer
	
attr_reader :flying, :name

	def initialize(name = plane_name)
		@name = name 
		@flying = true
	end

	def flying?
		@flying 
	end

	def land!
		@flying = false
		self
	end

	def take_off!
		@flying = true
		self
	end

	def land_on(airport)
		land!
	end
end
