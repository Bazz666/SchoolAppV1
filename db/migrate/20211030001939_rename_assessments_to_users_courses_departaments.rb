class Renameusers_courses_departamentsToUsersCoursesDepartaments < ActiveRecord::Migration[5.2]
  def change
    rename_table :users_courses_departaments, :users_courses_departaments
  end
end
