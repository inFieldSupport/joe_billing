# Clients
client1 = Client.new(name: "A&G", total_customers: 0)
client1.save!

client2 = Client.new(name: "Custom Brands (Eclipse)", total_customers: 0)
client2.save!

client3 = Client.new(name: "Eastwing", total_customers: 0)
client3.save!

client4 = Client.new(name: "LUMAR Fire", total_customers: 0)
client4.save!

client5 = Client.new(name: "MC Mech", total_customers: 0)
client5.save!

client6 = Client.new(name: "Mobile Mech", total_customers: 0)
client6.save!

client7 = Client.new(name: "ORHMA", total_customers: 0)
client7.save!

client8 = Client.new(name: "PPL Aquatic", total_customers: 0)
client8.save!

client9 = Client.new(name: "Sun Mech", total_customers: 0)
client9.save!

client10 = Client.new(name: "Vics Group", total_customers: 0)
client10.save!

client11 = Client.new(name: "Daniels", total_customers: 0)
client11.save!

client12 = Client.new(name: "Talize Inc", total_customers: 0)
client12.save!

client13 = Client.new(name: "ventureLAB", total_customers: 0)
client13.save!

client14 = Client.new(name: "Goodmark", total_customers: 0)
client14.save!

# Services
service1 = Service.new(name: "Admin")
service1.save!
service2 = Service.new(name: "dispatcher")
service2.save!
service3 = Service.new(name: "mechanic")
service3.save!
service4 = Service.new(name: "office_staff")
service4.save!
service5 = Service.new(name: "sub_contractor")
service5.save!
service6 = Service.new(name: "Technician (active)")
service6.save!
service7 = Service.new(name: "Consumers")
service7.save!
service8 = Service.new(name: "Telematics(GPS)")
service8.save!
service9 = Service.new(name: "Accounting")
service9.save!
service10 = Service.new(name: "Bin Module")
service10.save!
service11 = Service.new(name: "Bin Monitoring")
service11.save!
service12 = Service.new(name: "SMS Delivery")
service12.save!
service13 = Service.new(name: "Routing")
service13.save!

# Relationships
client1.services << service1
client1.services << service2
client1.services << service3
client1.services << service4
client1.services << service5
client1.services << service6
client1.save!

client2.services << service1
client2.services << service6
client2.services << service7
client2.save!

client3.services << service1
client3.services << service5
client3.services << service6
client3.save!

client4.services << service1
client4.services << service2
client4.services << service6
client4.save!

client5.services << service1
client5.services << service6
client5.save!

client6.services << service1
client6.services << service5
client6.services << service6
client6.services << service8
client6.services << service9
client6.save!

client7.services << service1
client7.services << service7
client7.save!

client8.services << service1
client8.services << service5
client8.save!

client9.services << service1
client9.services << service5
client9.save!

client10.services << service1
client10.services << service5
client10.services << service6
client10.save!

client11.services << service1
client11.services << service11
client11.services << service12
client11.save!

client12.services << service1
client12.services << service6
client12.services << service10
client12.services << service11
client12.services << service13
client12.save!

client13.services << service1
client13.save!

client14.services << service1
client14.services << service9
client14.save!