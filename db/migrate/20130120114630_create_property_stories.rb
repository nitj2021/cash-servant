class CreatePropertyStories < ActiveRecord::Migration
  def change
    create_table :property_stories do |t|
   t.references :property
         t.references :story
    end
  end
end
