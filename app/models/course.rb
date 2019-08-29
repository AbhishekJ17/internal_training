class Course < ApplicationRecord
  belongs_to :faculty
  belongs_to :subject
  has_many :enrollments
  has_many :students, through: :enrollments
end
