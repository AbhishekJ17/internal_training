# == Schema Information
#
# Table name: universities
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class University < ApplicationRecord
  has_many :colleges
  has_many :faculties, through: :colleges
  has_many :students, through: :colleges
  has_many :courses, through: :colleges
end
