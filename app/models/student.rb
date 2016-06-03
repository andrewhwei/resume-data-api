class Student < ActiveRecord::Base
  has_one :capstone
  has_many :educations
  has_many :experiences

  has_many :skills, through: :skilled_students
  has_many :skilled_students

end
