class Course < ApplicationRecord
  belongs_to :user
  has_many :usercourseassigns
  has_many :users , through: :usercourseassigns

  is_impressionable
end
