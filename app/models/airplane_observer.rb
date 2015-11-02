require 'render_anywhere'

class AirplaneObserver < ActiveRecord::Observer
  include RenderAnywhere

  def after_update(airplane)
    # TODO: MOVE TO SEPARATE FILE AS SERVICE
    # Example: Notifier.notify_followers
    message = build_html(airplane)

    # отправлять html не совсем верно, лучше отправить json
    # $faye_client.publish('/states', message: airplane.to_json(include: :airplane_state_transitions, methods: :public_event))

    $faye_client.publish('/states', message: message, airplane_id: airplane.id)
  end
  
  private
  
  def build_html(airplane)
    set_render_anywhere_helpers(AirplanesHelper)
    
    render partial: 'airplanes/airplane', layout: false, locals: { airplane: airplane }
  end
end
