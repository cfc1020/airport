class LineHandler
  include Sidekiq::Worker
  
  sidekiq_options retry: false, backtrace: false

  # start with 1 worker(== line count)

  def perform(airplane_id = nil)
    airplane = Airplane.find airplane_id

    airplane.go_to_accelerate!
    
    # Simulation of receipt a signal of take-off from the airplane
    # We should use for lock ConditionVariable and Mutex
    sleep Airplane::TIME_FOR_TAKE_OFF # HACK

    airplane.accelerated!
  end
end
