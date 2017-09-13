class Travel < ActiveRecord::Base
  belongs_to :offer_travel
  belongs_to :demand_travel
end
