class Student < ApplicationRecord
  belongs_to :college
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :faculties, through: :courses
end
