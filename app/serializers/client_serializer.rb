class ClientSerializer < ActiveModel::Serializer
  attributes :id, :dob, :user, :posts, :appointments
end
