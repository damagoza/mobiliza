class DemandTravelSerializer < ActiveModel::Serializer
  attributes :id, :accept, :state
  has_one :user
  has_one :offer_travel
end
