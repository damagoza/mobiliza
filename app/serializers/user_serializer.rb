class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :updated_at, :birthday
  has_many :vehicles
  has_many :offer_travels
  has_many :demand_travels  
end
