# == Schema Information
#
# Table name: faculties
#
#  id              :bigint           not null, primary key
#  college_id      :bigint           not null
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  date_of_joining :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Faculty < ApplicationRecord
  belongs_to :college
  has_many :courses
  has_many :students, through: :courses
end
