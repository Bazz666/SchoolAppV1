class Course < ApplicationRecord
    
    has_many :course_departament_user
    has_many :users , through: :course_departament_user
    
    validates :name, uniqueness: true
    validates :name, presence: true

    accepts_nested_attributes_for :course_departament_user, reject_if: :all_blank, allow_destroy: true


    def to_s
        name
    end
end

