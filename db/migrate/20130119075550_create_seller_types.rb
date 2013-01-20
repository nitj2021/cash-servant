class CreateSellerTypes < ActiveRecord::Migration
  def change
    create_table :seller_types do |t|
      t.string :category
      t.timestamps
    end
  end
end
