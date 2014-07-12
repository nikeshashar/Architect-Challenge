require 'plane'

describe Plane do

  let(:plane) 			{ Plane.new }
  let(:grounded_plane)	{ Plane.new.land! }
  
  it 'has a flying status when created' do
  	expect(plane).to be_flying
  end
  
  it 'can take off' do
  	airport = double :airport
  	grounded_plane.take_off
  	expect(grounded_plane).to be_flying
  end

  it 'should be flying after take off' do
  	airport = double :airport, take_off_from: :plane
  	expect(grounded_plane.take_off).to be_flying
  end

  it 'does not fly after it has landed' do
  	expect(plane.land!).not_to be_flying
  end

  
end

