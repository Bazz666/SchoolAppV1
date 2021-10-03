class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.date :birthDate
      t.integer :address
      t.integer :role

      t.timestamps
    end
  end
end
