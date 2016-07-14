class Activity < ActiveRecord::Base
  belongs_to :cprocess
  belongs_to :role
end
