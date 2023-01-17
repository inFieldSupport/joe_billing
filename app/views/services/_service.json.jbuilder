json.extract! service, :id, :name, :rate, :registered_users, :active_users, :created_at, :updated_at
json.url service_url(service, format: :json)
