class CreatePropertyBedrooms < ActiveRecord::Migration
  def change
    create_table :property_bedrooms do |t|
                      t.references :property
         t.references :bedroom

    end
  end
end
