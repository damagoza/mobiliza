class OfferTravel < ActiveRecord::Base
  belongs_to :user
  belongs_to :vechicle
  has_many :demand_travels
  has_many :travels
end
