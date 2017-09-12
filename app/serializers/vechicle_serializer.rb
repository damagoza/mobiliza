class VechicleSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :type_vehicle_id, :model, :created_at, :updated_at 
end
