# Preview all emails at http://localhost:3000/rails/mailers/service
class ServicePreview < ActionMailer::Preview
    def new_order_email
        client = Client.find(first)
        ServiceMailer.with(client: client.id, month: 1, year: 2023).send_email.deliver_later
    end
end
