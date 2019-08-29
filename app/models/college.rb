class College < ApplicationRecord
  belongs_to :university
  has_many :faculties
  has_many :students
  has_many :courses, through: :faculties
end
