class CreatePropertySellerTypes < ActiveRecord::Migration
  def change
    create_table :property_seller_types do |t|
      t.references :property
         t.references :seller_type
    end
  end
end
