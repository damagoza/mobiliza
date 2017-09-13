class TravelSerializer < ActiveModel::Serializer
  attributes :id, :state, :calification_offer, :calification_demand
  has_one :offer_travel
  has_one :demand_travel
end
