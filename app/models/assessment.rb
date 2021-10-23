class Assessment < ApplicationRecord
  belongs_to :course , optional: true
  belongs_to :user , optional: true
  belongs_to :departament , optional: true

  

  
end
