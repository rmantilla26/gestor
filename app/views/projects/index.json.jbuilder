json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :startDate, :endDate
  json.url project_url(project, format: :json)
end
