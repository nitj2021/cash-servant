class CreateBedrooms < ActiveRecord::Migration
  def change
    create_table :bedrooms do |t|
      t.string :quantity
      t.timestamps
    end
  end
end
