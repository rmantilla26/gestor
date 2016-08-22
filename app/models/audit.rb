class Audit < ActiveRecord::Base

	after_create :add_cprocesses_to_audit

	belongs_to :project
	has_many :audit_processes, -> { order(created_at: :asc) }, dependent: :destroy

  validates :sprint, :sprint_size, :presence => true
  
  def sprint_text
    "Sprint #{self.sprint}"
  end

  def sprint_size_text
    "#{self.sprint_size} day(s)"
  end

  private
  def add_cprocesses_to_audit

      #self.project_relatives.destroy_all

      processes =  Cprocess.all
      processes.each do |process|

        if process.id == 5
          sprint_size.times do |i|
            AuditProcess.create(audit_id: self.id, cprocess_id: process.id)
          end
        else
          AuditProcess.create(audit_id: self.id, cprocess_id: process.id)
        end
      end
    end


  end
