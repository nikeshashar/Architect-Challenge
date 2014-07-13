class Airport

	DEFAULT_CAPACITY = 6

	def initialise(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def planes
		@planes ||=[]
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def plane_count
		planes.count 
	end

	def land(plane)
		raise "Sorry we have no space here" if full?
		raise "Turn around - too stormy" if stormy?
		planes << plane
	end

	def clearTTO(plane)
		raise "Go back!" if stormy?
		planes.delete(plane)
	end

	def full?
		planes.count == capacity 	
	end

	
end
