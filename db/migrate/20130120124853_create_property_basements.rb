class CreatePropertyBasements < ActiveRecord::Migration
  def change
    create_table :property_basements do |t|
 t.references :property
             t.references :basement
    end
  end
end
