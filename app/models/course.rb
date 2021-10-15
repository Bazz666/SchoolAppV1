class Course < ApplicationRecord
    has_many :users , through: :assessments
    has_many :assessments

    def to_s
        name
    end
end

