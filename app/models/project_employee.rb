class ProjectEmployee < ActiveRecord::Base
  belongs_to :project
  belongs_to :employee
  belongs_to :role
end
