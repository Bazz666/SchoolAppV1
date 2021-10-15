class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.integer :grade
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.references :departament, foreign_key: true

      t.timestamps
    end
  end
end
