class Client < ApplicationRecord
    has_many :services

    validates :name, presence: true
    validates :owner, presence: true
    validates :email, presence: true
    validates :address, presence: true
    validates :state, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX },uniqueness: true
end
