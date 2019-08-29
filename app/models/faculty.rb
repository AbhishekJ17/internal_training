class Faculty < ApplicationRecord
  belongs_to :college
  has_many :courses
  has_many :students, through: :courses
end
