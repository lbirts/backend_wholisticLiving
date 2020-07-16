class User < ApplicationRecord
    has_many :comments
    has_many :messages
    has_one :client
    has_one :provider
    enum role: [:Client, :Provider]

    has_secure_password
    validates :email, uniqueness: true
end
