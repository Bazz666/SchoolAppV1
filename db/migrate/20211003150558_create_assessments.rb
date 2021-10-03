class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.string :grade
      t.references :course
      t.references :user
      t.references :departament

      t.timestamps
    end
  end
end
