class Course < ApplicationRecord
    
    has_many :assessments
    has_many :users , through: :assessments
    
    validates :name, uniqueness: true
    validates :name, presence: true

    accepts_nested_attributes_for :assessments, reject_if: :all_blank, allow_destroy: true


    def to_s
        name
    end
end

