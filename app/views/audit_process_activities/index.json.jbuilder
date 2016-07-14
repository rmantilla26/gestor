json.array!(@audit_process_activities) do |audit_process_activity|
  json.extract! audit_process_activity, :id, :audit_id, :cprocess_id, :activity_id
  json.url audit_process_activity_url(audit_process_activity, format: :json)
end
