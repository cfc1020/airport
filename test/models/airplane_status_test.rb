# == Schema Information
#
# Table name: airplane_statuses
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  airplane_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AirplaneStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
