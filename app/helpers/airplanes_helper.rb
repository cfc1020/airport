module AirplanesHelper
  def airplane_states(airplane)
    airplane.airplane_state_transitions.map do |airplane_state|
      [airplane_state.to, airplane_state.created_at].join ', '
    end.join('<br>').html_safe
  end
  
  def transfet_state_links(airplane)
    airplane.public_event.map do |airplane_event|
      link_to airplane_event, transfer_state_airplane_path(airplane, state: airplane_event), remote: true
    end.join('<br>').html_safe
  end
end
