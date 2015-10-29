# == Schema Information
#
# Table name: airplanes
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  state      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airplane < ActiveRecord::Base
  TIME_FOR_TAKE_OFF = 10.seconds
  PRIVATE_EVENT = [:accelerate, :flew_up].freeze
  
  has_many :airplane_state_transitions

  state_machine :state, initial: :on_earth do
    store_audit_trail

    state :on_earth
    state :waits_take_off
    state :on_take_off
    state :in_sky

    event :move_to_runway do
      transition [:on_earth] => :waits_take_off
    end

    event :accelerate do 
      transition [:waits_take_off] => :on_take_off
    end
    
    event :flew_up do
      transition [:on_take_off] => :in_sky
    end

    event :sat_down do
      transition [:in_sky, :waits_take_off, :on_take_off] => :on_earth
    end
    
    after_transition any => :waits_take_off do |airplane, transition|
      LineHandler.perform_async(airplane.id)
    end
  end

  def transfer_state(new_state)
    return false if public_event.exclude? new_state.to_sym
    send(new_state)
  end
  
  def public_event
    state_events - PRIVATE_EVENT
  end
  
  def go_to_accelerate!
    accelerate
  end
  
  def accelerated!
    flew_up
  end
  
  private *PRIVATE_EVENT, :state_events
end
