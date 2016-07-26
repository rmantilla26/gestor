class AuditProcess < ActiveRecord::Base
	after_create :add_activity_to_cprocesses

	belongs_to :audit
	belongs_to :cprocess

	has_many :audit_process_activities, -> { order(created_at: :asc) }, dependent: :destroy


	def percentage_of_completion

		activities = self.audit_process_activities
		activities_numbers = activities.count
		if activities_numbers == 0
			0
		else
			activities_completed = 0

			activities.each do |activity|
				if activity.completed
					activities_completed = activities_completed + 1
				end
			end

			value = (activities_completed / activities_numbers.to_f) * 100
			value.to_int
		end

	end

	private
	def add_activity_to_cprocesses

      #self.project_relatives.destroy_all

      activities =  self.cprocess.activities
      activities.each do |activity|
      	AuditProcessActivity.create(audit_id: self.audit_id, audit_process_id: self.id, activity_id: activity.id)
      end
  end
end
