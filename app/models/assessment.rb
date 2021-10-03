class Assessment < ApplicationRecord
    belongs_to :course
    belongs_to :departament
    belongs_to :user
end
