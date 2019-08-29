# == Schema Information
#
# Table name: courses
#
#  id             :bigint           not null, primary key
#  faculty_id     :bigint           not null
#  subject_id     :bigint           not null
#  scheduled_time :time
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Course < ApplicationRecord
  belongs_to :faculty
  belongs_to :subject
  has_many :enrollments
  has_many :students, through: :enrollments
end
