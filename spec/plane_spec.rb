require 'plane'


# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
describe Plane do

  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane).to be_flying
  end
  
  it 'has a flying status when in the air' do

  end
  
  it 'can take off' do
  	airport = double :airport
  	expect(airport).to receive(:clearTTO_plane)
  	plane.take_off_from(airport)
  end

  it 'changes its status to flying after taking of' do

  end

  it 'does not fly after it has landed' do
  	#plane.land!
  	expect(plane.land!).not_to be_flying
  end

end

