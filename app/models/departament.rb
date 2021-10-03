class Departament < ApplicationRecord
    has_many :assessments

    validates :name, presence: true
end
