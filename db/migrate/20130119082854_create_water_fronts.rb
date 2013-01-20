class CreateWaterFronts < ActiveRecord::Migration
  def change
    create_table :water_fronts do |t|

      t.string :category
    end
  end
end
