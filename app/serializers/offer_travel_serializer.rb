class OfferTravelSerializer < ActiveModel::Serializer
  attributes :id, :coordenada_start, :coordenada_end, :name_start, :name_end, :state, :user_id, :vechicle_id
  has_one :user
  has_one :vechicle
end
