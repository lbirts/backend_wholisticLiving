class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :avatar, :role, :provider, :client, :comments
  # has_one :provider
  # has_one :client
end
