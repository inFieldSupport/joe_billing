class Service < ApplicationRecord
  belongs_to :service_type
  belongs_to :client
end
