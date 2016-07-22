json.array!(@activities) do |activity|
  json.extract! activity, :id, :cprocess_id, :order, :title, :description, :role_id
  json.url activity_url(activity, format: :json)
end
