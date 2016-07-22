class CreateCprocessActivities < ActiveRecord::Migration
  def change
    create_table :cprocess_activities do |t|
      t.references :cprocess, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
