class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :provider, :client, :notes
end
