json.array!(@cprocess_activities) do |cprocess_activity|
  json.extract! cprocess_activity, :id, :cprocess_id, :activity_id
  json.url cprocess_activity_url(cprocess_activity, format: :json)
end
