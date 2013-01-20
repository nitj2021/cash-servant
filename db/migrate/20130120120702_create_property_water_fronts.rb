class CreatePropertyWaterFronts < ActiveRecord::Migration
  def change
    create_table :property_water_fronts do |t|
 t.references :property
             t.references :water_front
    end
  end
end
