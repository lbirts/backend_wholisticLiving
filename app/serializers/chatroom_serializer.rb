class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :client, :provider
end
