class Course < ApplicationRecord
  belongs_to :user
  has_many :usercourseassigns
  has_many :users , through: :usercourseassigns
end
