require 'airport'
require 'plane'


describe Airport do

  let(:airport)       { Airport.new   }
  let(:plane)         { double :plane }
  let(:landed_plane)  { plane.land!   }

  def fill_airport
    Airport::DEFAULT_CAPACITY.times {airport.land(plane)}
  end
 
  context 'taking off and landing' do
    
    it 'a plane can land' do
      expect(airport.plane_count).to eq (0)
      airport.land(plane)
      expect(airport.plane_count).to eq (1)
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
  end 

    
    context 'weather conditions' do
      it 'a plane cannot take off when there is a storm brewing' do
      
      end
      
      it 'a plane cannot land in the middle of a storm' do
      
      end
    end
  
end




describe "The gand finale (last spec)" do
  it 'all planes can land and all planes can take off' do
  end
end


# Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
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
