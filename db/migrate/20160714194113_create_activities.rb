class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :cprocess, index: true, foreign_key: true
      t.integer :order
      t.string :description
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
