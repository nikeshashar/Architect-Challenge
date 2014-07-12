require 'plane'

describe Plane do

  let(:plane) 			{ Plane.new 	  }
  let(:grounded_plane)	{ Plane.new.land! }
  
	it 'has a flying status when created' do
	  	expect(plane.flying?).to be true
	end
	 
	it 'can land' do
		expect(plane.land!).not_to be_flying
	end

	it 'can take off' do
	  	#airport = double :airport
	  	grounded_plane.take_off
	  	expect(grounded_plane).to be_flying
	end

	it 'should be flying after take off' do
	  	
	  	expect(grounded_plane.take_off).to be_flying
	end

	it 'does not fly after it has landed' do
	  	expect(plane.land!).not_to be_flying
	end

	

 #  	it 'cannot take off in bad weather' do
	
	# end

	# it 'has a name when created' do 

	# end

end

