class Chatroom < ApplicationRecord
    belongs_to :client
    belongs_to :provider
    has_many :messages, dependent: :destroy
end
