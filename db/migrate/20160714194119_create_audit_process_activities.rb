class CreateAuditProcessActivities < ActiveRecord::Migration
  def change
    create_table :audit_process_activities do |t|
      t.references :audit, index: true, foreign_key: true
      t.references :cprocess, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
