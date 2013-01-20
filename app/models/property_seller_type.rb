class PropertySellerType < ActiveRecord::Base
  belongs_to :property
  belongs_to :seller_type
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:seller_type_id
  # attr_accessible :title, :body
end
