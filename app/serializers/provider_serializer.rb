class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :specialty, :user, :appointments, :category, :availabilities, :yearsofexp, :subspecialties
end
