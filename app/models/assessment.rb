class Assessment < ApplicationRecord
  belongs_to :course , optional: true
  belongs_to :users , optional: true
  belongs_to :departament , optional: true

  

  
end
