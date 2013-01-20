class CreatePropertyPools < ActiveRecord::Migration
  def change
    create_table :property_pools do |t|
      t.references :property
             t.references :pool

    end
  end
end
