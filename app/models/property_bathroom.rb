class PropertyBathroom < ActiveRecord::Base
  belongs_to :property
  belongs_to :bathroom
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:bathroom_id
  # attr_accessible :title, :body
end
