class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user, :chatroom
end
