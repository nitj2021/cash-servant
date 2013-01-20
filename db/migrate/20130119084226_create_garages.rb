class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string:capacity
    end
  end
end
