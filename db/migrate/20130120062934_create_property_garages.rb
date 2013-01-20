class CreatePropertyGarages < ActiveRecord::Migration
  def change
    create_table :property_garages do |t|
      t.references :property
      t.references :garage


    end
  end
end
