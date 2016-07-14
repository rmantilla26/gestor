class AuditProcessActivity < ActiveRecord::Base
  belongs_to :audit
  belongs_to :cprocess
  belongs_to :activity
end
