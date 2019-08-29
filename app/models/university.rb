class University < ApplicationRecord
  has_many :colleges
  has_many :faculties, through: :colleges
  has_many :students, through: :colleges
  has_many :courses, through: :colleges
end
