# Preview all emails at http://localhost:3000/rails/mailers/service
class ServicePreview < ActionMailer::Preview
    def new_order_email
        # Set up a temporary order for the preview
        client = Client.first
    
        ServiceMailer.with(client: client).send_email
    end
end
