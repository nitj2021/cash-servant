class PropertyPool < ActiveRecord::Base
  belongs_to :property
  belongs_to :pool
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:pool_id
  # attr_accessible :title, :body
end
