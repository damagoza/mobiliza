class VechicleSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :type_vehicle_id, :model, :created_at, :updated_at 
  belongs_to :user
  belongs_to :type_vehicle
  has_many :offer_travels  
end
