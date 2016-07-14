json.array!(@audit_processes) do |audit_process|
  json.extract! audit_process, :id, :audit_id, :cprocess_id
  json.url audit_process_url(audit_process, format: :json)
end
