class AuditProcess < ActiveRecord::Base
  belongs_to :audit
  belongs_to :cprocess
end
