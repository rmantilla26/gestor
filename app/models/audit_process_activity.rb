class AuditProcessActivity < ActiveRecord::Base
  belongs_to :audit
  belongs_to :audit_process
  belongs_to :activity
end
