class OfferTravelSerializer < ActiveModel::Serializer
  attributes :id, :coordenada_start, :coordenada_end, :name_start, :name_end, :state
  has_one :user
  has_one :vechicle
end
