require 'airport'
require 'weather'

describe Airport do

  let(:airport)       { Airport.new           }
  let(:plane)         { double :plane         }
  let(:landed_plane)  { double :plane, land!  }


  def fill_airport
    airport.capacity.times {airport.land(plane)}
  end
 
  before(:each) do
    allow(airport).to receive(:stormy?).and_return(false)
  end

  context 'taking off and landing' do
    
    it 'a plane can land' do
      expect(airport.plane_count).to eq (0)
      airport.land(plane)
      expect(airport.planes).to eq ([plane])
    end
    
    it 'a plane can take off' do
      airport.land(plane)
      expect(airport.planes).to eq([plane])
      airport.clearTTO(plane)
      expect(airport.planes).to eq([])
    end
  end

  context 'traffic control' do

    it 'should know when the airport is full' do
      expect(airport).not_to be_full
      fill_airport
      expect(airport).to be_full 
    end

    it 'cannot allow plane to land if full' do
      fill_airport
      expect{airport.land(plane)}.to raise_error(RuntimeError)
    end
  end 

  context 'weather conditions' do
    
    it 'a plane cannot land in a storm' do
      allow(airport).to receive(:stormy?).and_return(true)
      expect{airport.clearTTO(plane)}.to raise_error(RuntimeError)
    end
  end 
end

describe "The grand finale (last spec)" do
  
  it 'all planes can land and all planes can take off' do

  end

end


# Include a weather condition using a module.
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    # grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
