class PropertiesController < ApplicationController
  def index
    @properties=current_user.properties
  end
  def new
    @property=Property.new
    @property.create_all_resource
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
