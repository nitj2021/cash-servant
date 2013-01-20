class PropertyGarage < ActiveRecord::Base
  belongs_to :property
  belongs_to :garage
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:garage_id
end
