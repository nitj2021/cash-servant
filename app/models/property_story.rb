class PropertyStory < ActiveRecord::Base
 belongs_to :property
  belongs_to :story
  #validates_presence_of :property_id,:garage_id
   attr_accessible :property_id,:story_id
  # attr_accessible :title, :body
end