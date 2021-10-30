class DeleteGradeTousers_courses_departaments < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :users_courses_departaments, :grade
  
  end
  
end
