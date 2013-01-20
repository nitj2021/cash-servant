class PropertiesController < ApplicationController
  def index
    @properties=current_user.properties
  end
  def new
    @property=Property.new
    @property.build_property_garage
    @property.build_property_property_type
    @property.build_property_bedroom
    @property.build_property_bathroom
    @property.build_property_seller_type
    @property.build_property_story
    @property.build_property_pool
    @property.build_property_basement
  @property.build_property_water_front
  end
  def create
 @property=   current_user.properties.new(params[:property])
 #a.build_property_garage(params[:property][:property_garage_attributes])
 if @property.save

 else
   render :nothing=>true
 end

  end
end
