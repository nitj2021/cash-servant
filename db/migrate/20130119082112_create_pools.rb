class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
t.string :category
    end
  end
end
