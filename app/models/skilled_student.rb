class SkilledStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :skill
end
