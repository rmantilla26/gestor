json.array!(@audits) do |audit|
  json.extract! audit, :id, :project_id, :description
  json.url audit_url(audit, format: :json)
end
