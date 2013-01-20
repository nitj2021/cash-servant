class CreatePropertyPropertyTypes < ActiveRecord::Migration
  def change
    create_table :property_property_types do |t|
      t.references :property
         t.references :property_type

    end
  end
end
