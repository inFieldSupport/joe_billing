class Client < ApplicationRecord
    has_many :client_services
    has_many :services, through: :client_services
end
