require 'csv'

# User
User.create(email: "test@test.com", password: "qwe123", password_confirmation: "qwe123")

csv_clients = File.read(Rails.root.join('lib', 'seeds', 'clients.csv'))
csv = CSV.parse(csv_clients, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row| 
    client = Client.new
    client.name = row['name']
    client.email = row['email']
    client.owner = row['owner']
    client.address = row['address']
    client.state = row['state']
    client.total_customers = row['total_customers']
    client.save
end

csv_service_types = File.read(Rails.root.join('lib', 'seeds', 'service_types.csv'))
csv = CSV.parse(csv_service_types, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row| 
    service_type = ServiceType.new
    service_type.name = row['name']
    service_type.save
end

csv_services = File.read(Rails.root.join('lib', 'seeds', 'services.csv'))
csv = CSV.parse(csv_services, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row| 
    service = Service.new
    service.client_id = row['client_id']
    service.service_type_id = row['service_type_id']
    service.rate = row['rate']
    service.registered_users = row['registered_users']
    service.active_users = row['active_users']
    service.month = row['month']
    service.year = row['year']
    service.save
end