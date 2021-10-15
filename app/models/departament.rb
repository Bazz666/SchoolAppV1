class Departament < ApplicationRecord
    has_many :assessments
    has_many :users , through: :assessments
    
    def to_s
        name
    end
end
