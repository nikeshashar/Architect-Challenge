module Weather

	def randomise
		rand(6)
	end

	def stormy?
		if randomise < 2
			stormy == true
		end
	end

	
end
