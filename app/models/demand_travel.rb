class DemandTravel < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer_travel
  belongs_to :travel
end
