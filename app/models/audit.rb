class Audit < ActiveRecord::Base

	after_create :add_cprocesses_to_audit

	belongs_to :project
	has_many :audit_processes, -> { order(created_at: :asc) }, dependent: :destroy

	private
	def add_cprocesses_to_audit

      #self.project_relatives.destroy_all

      processes =  Cprocess.all
      processes.each do |process|
      	AuditProcess.create(audit_id: self.id, cprocess_id: process.id)
      end
  end
end
