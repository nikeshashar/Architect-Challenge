require 'plane'

describe Plane do

  let(:plane) 			{ Plane.new 	  }
  let(:landed_plane)	{ Plane.new.land! }
  let(:airport) 		{ double :airport  }


	it 'has a flying status when created' do
	  	expect(plane.flying?).to be true
	end
	 
	it 'can land' do
		expect(plane.land!).not_to be_flying
	end

	it 'can take off' do 
	  	landed_plane.take_off!
	  	expect(landed_plane).to be_flying
	end

	it 'should be flying after take off' do
	  	expect(landed_plane.take_off!).to be_flying
	end

	it 'does not fly after it has landed' do
	  	expect(plane.land!).not_to be_flying
	end

	it 'should land at an airport' do
		expect(plane.land!).not_to be_flying
	end

	it 'should take off from airport' do
		expect(plane.take_off!).to be_flying
	end

end

