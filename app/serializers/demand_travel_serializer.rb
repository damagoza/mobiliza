class DemandTravelSerializer < ActiveModel::Serializer
	attributes :id, :accept, :state, :user_id, :offer_travel_id
	has_one :user
	has_one :offer_travel
end
