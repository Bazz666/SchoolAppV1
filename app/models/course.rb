class Course < ApplicationRecord
    has_many :assessments

    validates :name, presence: true
end
