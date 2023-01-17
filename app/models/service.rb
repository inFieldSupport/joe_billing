class Service < ApplicationRecord
    has_many :client_services
    has_many :clients, through: :client_services
end
