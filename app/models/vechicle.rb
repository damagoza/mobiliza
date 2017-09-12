class Vechicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :type_vehicle
  has_many :offer_travels
end
