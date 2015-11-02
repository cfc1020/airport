require 'rails_helper'

# TODO: Add pub/sub service test in the feature

RSpec.describe Airplane, type: :model do
  describe 'start up 2 airplanes' do
    # TODO: Use FactoryGirl
    # and refactor it
    airplane1 = Airplane.create name: 'Moscow'
    airplane2 = Airplane.create name: 'NYC'

    airplane1.move_to_runway
    airplane2.move_to_runway

    it 'first airplane on take off and second airplane is waits take-off' do
      wait_for{ airplane1.reload.state }.to eq('on_take_off')
      expect(airplane2.reload.state).to eq('waits_take_off')
    end

    it 'first airplane in sky and second airplane on take off' do
      wait_for{ airplane1.reload.state }.to eq('in_sky')
      expect(airplane2.reload.state).to eq('on_take_off')
    end

    it 'second airplane in sky' do
      wait_for{ airplane2.reload.state }.to eq('in_sky')
    end
    
    it 'ferst airplane and second airplane is sat_down' do
      airplane1.sat_down
      airplane2.sat_down
      
      expect(airplane1.reload.state).to eq('on_earth')
      expect(airplane2.reload.state).to eq('on_earth')
    end
  end
  
  describe 'test state_machine other methods' do
    airplane = Airplane.create name: 'Minsk'

    it 'initial state is on_earth' do
      expect(airplane.state).to eq('on_earth')
    end
    
    it 'checking private events' do
      expect(Airplane.private_instance_methods).to include(:accelerate)
      expect(Airplane.private_instance_methods).to include(:flew_up)
    end
  end
end
