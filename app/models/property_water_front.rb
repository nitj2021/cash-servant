class PropertyWaterFront < ActiveRecord::Base
 belongs_to :property
  belongs_to :water_front
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:water_front_id
  # attr_accessible :title, :body
end
