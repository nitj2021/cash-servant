class Property < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :property_property_type  ,:property_bedroom ,:property_bathroom ,:property_seller_type,
                        :property_story  ,:property_pool  ,:property_water_front ,:property_basement
  validates_presence_of :street_address,:city,:zip_code,:asking_price,:square_feet,:full_property_description ,:property_garage
  #
  #validates_presence_of :bathrooms,:seller_types,:stories,:pools,:full_property_description ,:bedrooms
    has_one :property_garage
     has_one :property_property_type
     has_one :property_bedroom
     has_one :property_bathroom
     has_one :property_seller_type
     has_one :property_story
     has_one :property_pool
   has_one :property_water_front
	after_new :create_resource
   has_one :property_basement

    accepts_nested_attributes_for :property_garage, :reject_if => proc { |attributes| attributes['garage_id'].blank? }
    accepts_nested_attributes_for :property_property_type, :reject_if => proc { |attributes| attributes['property_type_id'].blank? }
   accepts_nested_attributes_for :property_bedroom, :reject_if => proc { |attributes| attributes['bedroom_id'].blank? }
  accepts_nested_attributes_for :property_bathroom, :reject_if => proc { |attributes| attributes['bathroom_id'].blank? }
  accepts_nested_attributes_for :property_seller_type, :reject_if => proc { |attributes| attributes['seller_type_id'].blank? }
  accepts_nested_attributes_for :property_story, :reject_if => proc { |attributes| attributes['story_id'].blank? }
  accepts_nested_attributes_for :property_pool, :reject_if => proc { |attributes| attributes['pool_id'].blank? }
  accepts_nested_attributes_for :property_water_front, :reject_if => proc { |attributes| attributes['water_front_id'].blank? }
  accepts_nested_attributes_for :property_basement, :reject_if => proc { |attributes| attributes['basement_id'].blank? }
  #has_and_belongs_to_many :bedrooms
   attr_accessible :street_address,:city,:zip_code,:asking_price,:square_feet,:full_property_description ,
                   :property_garage_attributes,:property_property_type_attributes, :year_built,
                   :short_property_description,:property_bedroom_attributes,:property_bathroom_attributes,
                   :property_seller_type_attributes , :property_story_attributes,:property_pool_attributes,
                    :property_water_front_attributes ,:property_basement_attributes ,:video, :meta_description, :meta_keyword

def address
  street_address+","+city+","+zip_code
end
def create_resource
build_property_garage
   build_property_property_type
   build_property_bedroom
  build_property_bathroom
   build_property_seller_type
    build_property_story
build_property_pool
build_property_basement
 build_property_water_front
  end

end