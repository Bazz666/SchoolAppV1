class Course < ApplicationRecord
    
    has_many :users_courses_departaments
    has_many :users , through: :users_courses_departaments
    
    validates :name, uniqueness: true
    validates :name, presence: true

    accepts_nested_attributes_for :users_courses_departaments, reject_if: :all_blank, allow_destroy: true


    def to_s
        name
    end
end

