class AddSprintDaysToAudit < ActiveRecord::Migration
  def change
  	add_column :audits, :sprint_size, :integer
  end
end
