class Vechicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :type_vehicle
end
