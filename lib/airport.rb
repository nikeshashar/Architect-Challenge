class Airport



	def planes
		@planes ||=[]
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




end