class CreateAuditProcessActivities < ActiveRecord::Migration
  def change
    create_table :audit_process_activities do |t|
      t.references :audit, index: true, foreign_key: true
      t.references :audit_process, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
