# == Schema Information
#
# Table name: colleges
#
#  id            :bigint           not null, primary key
#  name          :string(255)
#  university_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CollegeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
