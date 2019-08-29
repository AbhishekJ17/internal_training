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

class College < ApplicationRecord
  belongs_to :university
  has_many :faculties
  has_many :students
  has_many :courses, through: :faculties
end
