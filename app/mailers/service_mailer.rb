class ServiceMailer < ApplicationMailer
    def send_email
        @client = Client.find(params[:client])
        @services = @client.services
        @tax = 13
        @sub_total = 0
        @services.each do |service|
          @sub_total += (service.rate * service.active_users)
        end
        @sub_total = @sub_total.round(2)
        @tax_amount = ((@sub_total * @tax) / 100).round(2) 
        @total = (@sub_total + @tax_amount).round(2)
        @month = params[:month]
        @year = params[:year]
        mail(to: @client.email, subject: "This month's bill")
    end
end
