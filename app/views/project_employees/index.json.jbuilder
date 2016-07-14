json.array!(@project_employees) do |project_employee|
  json.extract! project_employee, :id, :project_id, :employee_id, :role_id
  json.url project_employee_url(project_employee, format: :json)
end
