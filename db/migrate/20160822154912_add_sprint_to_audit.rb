class AddSprintToAudit < ActiveRecord::Migration
  def change
  	add_column :audits, :sprint, :integer
  end
end
