json.array!(@cprocesses) do |cprocess|
  json.extract! cprocess, :id, :name, :purpose, :abbreviation, :area_id
  json.url cprocess_url(cprocess, format: :json)
end
