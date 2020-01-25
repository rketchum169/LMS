class Student < ApplicationRecord
    has_many :grades
    has_many :assignments, through: :grades
    belongs_to :course
end
