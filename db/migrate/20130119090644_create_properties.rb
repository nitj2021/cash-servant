class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.references :user
       t.string :street_address,:null=>false
       t.string :video
      t.string :city,:null=>false
      t.string :zip_code,:null=>false
       t.string :short_property_description
       t.text :full_property_description ,:null=>false
       t.text :meta_description
       t.text :meta_keyword
       t.integer :asking_price,:null=>false
        t.integer :square_feet,:null=>false
      t.integer :year_built,:null=>false
      t.timestamps
    end
  end
end
