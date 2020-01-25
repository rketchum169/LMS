class Course < ApplicationRecord
    has_many :students
    has_many :assignments
    has_many :grades, through: :assignments
end
