class PropertyPropertyType < ActiveRecord::Base
   belongs_to :property
  belongs_to :property_type
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:property_type_id
  # attr_accessible :title, :body
end
