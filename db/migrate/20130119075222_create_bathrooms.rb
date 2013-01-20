class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
        t.string :quantity
      t.timestamps
    end
  end
end
