json.extract! service, :id, :service_type_id, :client_id, :rate, :active_users, :registered_users, :created_at, :updated_at
json.url service_url(service, format: :json)
