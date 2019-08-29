# == Schema Information
#
# Table name: subjects
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subject < ApplicationRecord
  has_many :courses
  has_many :students, through: :courses
end
