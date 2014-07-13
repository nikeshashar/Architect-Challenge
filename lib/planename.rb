module PlaneNamer

	def plane_name
		([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(4).join
	    #["BA"*('0'..'3')].sample(2).join
	end
end