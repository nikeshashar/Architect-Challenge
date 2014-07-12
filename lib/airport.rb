class Airport

	DEFAULT_CAPACITY = 100


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
		planes << plane
	end

	def clearTTO(plane)
		planes.delete(plane)
	end

	def full?
		planes.count == capacity 	
	end


end
