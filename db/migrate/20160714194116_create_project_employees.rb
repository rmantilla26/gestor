class CreateProjectEmployees < ActiveRecord::Migration
  def change
    create_table :project_employees do |t|
      t.references :project, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
