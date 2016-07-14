class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.references :project, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
