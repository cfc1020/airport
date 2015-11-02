# == Schema Information
#
# Table name: airplane_state_transitions
#
#  id          :integer          not null, primary key
#  airplane_id :integer
#  event       :string(255)
#  from        :string(255)
#  to          :string(255)
#  created_at  :datetime
#

class AirplaneStateTransition < ActiveRecord::Base
  belongs_to :airplane
end
