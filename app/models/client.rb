class Client < ApplicationRecord
    belongs_to :user
    has_many :posts
    has_many :appointments
end
