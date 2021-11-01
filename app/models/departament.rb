class Departament < ApplicationRecord
    has_many :course_departament_user
    has_many :users , through: :course_departament_user
    
    def to_s
        name
    end
end
