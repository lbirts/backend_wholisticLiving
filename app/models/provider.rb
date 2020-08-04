class Provider < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :appointments
    has_many :availabilities
end
