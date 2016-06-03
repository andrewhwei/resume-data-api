class Skill < ActiveRecord::Base
  has_many :students, through: :skilled_students
  has_many :skilled_students
end
