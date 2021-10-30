class Departament < ApplicationRecord
    has_many :users_courses_departaments
    has_many :users , through: :users_courses_departaments
    
    def to_s
        name
    end
end
