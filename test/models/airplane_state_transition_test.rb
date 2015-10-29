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

require 'test_helper'

class AirplaneStateTransitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
