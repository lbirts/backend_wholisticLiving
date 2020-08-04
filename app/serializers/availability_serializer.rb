class AvailabilitySerializer < ActiveModel::Serializer
  attributes :id, :day, :time
  has_one :provider
end
