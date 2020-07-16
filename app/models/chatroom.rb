class Chatroom < ApplicationRecord
    belongs_to :client
    belongs_to :provider
end
