class CreatePropertyBathrooms < ActiveRecord::Migration
  def change
    create_table :property_bathrooms do |t|
               t.references :property
         t.references :bathroom
    end
  end
end
