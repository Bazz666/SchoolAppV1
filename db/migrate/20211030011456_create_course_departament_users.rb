class CreateCourseDepartamentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :course_departament_users do |t|
      t.references :course, foreign_key: true
      t.references :departament, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
