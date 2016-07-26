class Project < ActiveRecord::Base

  has_many :project_employees, -> { order(created_at: :asc) }
  has_many :employees, :through => :project_employees

  has_many :audits, -> { order(created_at: :asc) }

end
