class Service < ApplicationRecord
  belongs_to :service_type
  belongs_to :client

  validates :client_id, presence: true
  validates :service_type_id, presence: true
  validates :rate, presence: true
  validates :active_users, presence: true
  validates :registered_users, presence: true
end
