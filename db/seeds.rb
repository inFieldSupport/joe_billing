# Clients
client1 = Client.create(name: "A&G", total_customers: 0)
client2 = Client.create(name: "Custom Brands (Eclipse)", total_customers: 0)
client3 = Client.create(name: "Eastwing", total_customers: 0)
client4 = Client.create(name: "LUMAR Fire", total_customers: 0)
client5 = Client.create(name: "MC Mech", total_customers: 0)
client6 = Client.create(name: "Mobile Mech", total_customers: 0)
client7 = Client.create(name: "ORHMA", total_customers: 0)
client8 = Client.create(name: "PPL Aquatic", total_customers: 0)
client9 = Client.create(name: "Sun Mech", total_customers: 0)
client10 = Client.create(name: "Vics Group", total_customers: 0)
client11 = Client.create(name: "Daniels", total_customers: 0)
client12 = Client.create(name: "Talize Inc", total_customers: 0)
client13 = Client.create(name: "ventureLAB", total_customers: 0)
client14 = Client.create(name: "Goodmark", total_customers: 0)

# Services
service_type1 = ServiceType.create(name: "Admin")
service_type2 = ServiceType.create(name: "dispatcher")
service_type3 = ServiceType.create(name: "mechanic")
service_type4 = ServiceType.create(name: "office_staff")
service_type5 = ServiceType.create(name: "sub_contractor")
service_type6 = ServiceType.create(name: "Technician (active)")
service_type7 = ServiceType.create(name: "Consumers")
service_type8 = ServiceType.create(name: "Telematics(GPS)")
service_type9 = ServiceType.create(name: "Accounting")
service_type10 = ServiceType.create(name: "Bin Module")
service_type11 = ServiceType.create(name: "Bin Monitoring")
service_type12 = ServiceType.create(name: "SMS Delivery")
service_type13 = ServiceType.create(name: "Routing")

# relationships
Service.create(client_id: client1.id, service_type_id: service_type1.id, rate: 22.40, registered_users: 0, active_users: 34)
Service.create(client_id: client1.id, service_type_id: service_type2.id, rate: 22.40, registered_users: 0, active_users: 1)
Service.create(client_id: client1.id, service_type_id: service_type3.id, rate: 22.40, registered_users: 0, active_users: 3)
Service.create(client_id: client1.id, service_type_id: service_type4.id, rate: 8.96, registered_users: 0, active_users: 65)
Service.create(client_id: client1.id, service_type_id: service_type5.id, rate: 22.40, registered_users: 0, active_users: 3)
Service.create(client_id: client1.id, service_type_id: service_type6.id, rate: 22.40, registered_users: 0, active_users: 151)

Service.create(client_id: client2.id, service_type_id: service_type1.id, rate: 40.32, registered_users: 0, active_users: 3)
Service.create(client_id: client2.id, service_type_id: service_type6.id, rate: 40.32, registered_users: 0, active_users: 11)
Service.create(client_id: client2.id, service_type_id: service_type7.id, rate: 40.32, registered_users: 0, active_users: 17)

Service.create(client_id: client3.id, service_type_id: service_type1.id, rate: 36.00, registered_users: 0, active_users: 2)
Service.create(client_id: client3.id, service_type_id: service_type5.id, rate: 36.00, registered_users: 0, active_users: 1)
Service.create(client_id: client3.id, service_type_id: service_type6.id, rate: 36.00, registered_users: 0, active_users: 5)

Service.create(client_id: client4.id, service_type_id: service_type1.id, rate: 40.32, registered_users: 0, active_users: 7)
Service.create(client_id: client4.id, service_type_id: service_type2.id, rate: 40.32, registered_users: 0, active_users: 1)
Service.create(client_id: client4.id, service_type_id: service_type6.id, rate: 11.20, registered_users: 0, active_users: 68)

Service.create(client_id: client5.id, service_type_id: service_type1.id, rate: 36.00, registered_users: 0, active_users: 3)
Service.create(client_id: client5.id, service_type_id: service_type6.id, rate: 36.00, registered_users: 0, active_users: 13)

Service.create(client_id: client6.id, service_type_id: service_type1.id, rate: 24.64, registered_users: 0, active_users: 10)
Service.create(client_id: client6.id, service_type_id: service_type5.id, rate: 24.64, registered_users: 0, active_users: 3)
Service.create(client_id: client6.id, service_type_id: service_type6.id, rate: 24.64, registered_users: 0, active_users: 19)
Service.create(client_id: client6.id, service_type_id: service_type8.id, rate: 13.44, registered_users: 0, active_users: 35)
Service.create(client_id: client6.id, service_type_id: service_type9.id, rate: 280.00, registered_users: 0, active_users: 1)

Service.create(client_id: client7.id, service_type_id: service_type1.id, rate: 24.64, registered_users: 0, active_users: 2)
Service.create(client_id: client7.id, service_type_id: service_type7.id, rate: 1.00, registered_users: 0, active_users: 200)

Service.create(client_id: client8.id, service_type_id: service_type1.id, rate: 36.00, registered_users: 0, active_users: 2)
Service.create(client_id: client8.id, service_type_id: service_type5.id, rate: 36.00, registered_users: 0, active_users: 15)

Service.create(client_id: client9.id, service_type_id: service_type1.id, rate: 28.00, registered_users: 0, active_users: 3)
Service.create(client_id: client9.id, service_type_id: service_type5.id, rate: 28.00, registered_users: 0, active_users: 7)

Service.create(client_id: client10.id, service_type_id: service_type1.id, rate: 40.32, registered_users: 0, active_users: 8)
Service.create(client_id: client10.id, service_type_id: service_type5.id, rate: 40.32, registered_users: 0, active_users: 1)
Service.create(client_id: client10.id, service_type_id: service_type6.id, rate: 1.00, registered_users: 0, active_users: 7)

Service.create(client_id: client11.id, service_type_id: service_type1.id, rate: 1.00, registered_users: 0, active_users: 2)
Service.create(client_id: client11.id, service_type_id: service_type11.id, rate: 289.32, registered_users: 0, active_users: 1)
Service.create(client_id: client11.id, service_type_id: service_type12.id, rate: 5.00, registered_users: 0, active_users: 1)

Service.create(client_id: client12.id, service_type_id: service_type1.id, rate: 24.64, registered_users: 0, active_users: 2)
Service.create(client_id: client12.id, service_type_id: service_type6.id, rate: 24.64, registered_users: 0, active_users: 0)
Service.create(client_id: client12.id, service_type_id: service_type10.id, rate: 112.00, registered_users: 0, active_users: 1)
Service.create(client_id: client12.id, service_type_id: service_type11.id, rate: 11.20, registered_users: 0, active_users: 40)
Service.create(client_id: client12.id, service_type_id: service_type13.id, rate: 16.80, registered_users: 0, active_users: 4)

Service.create(client_id: client13.id, service_type_id: service_type1.id, rate: 1.00, registered_users: 0, active_users: 4)

Service.create(client_id: client14.id, service_type_id: service_type8.id, rate: 22.00, registered_users: 0, active_users: 3)