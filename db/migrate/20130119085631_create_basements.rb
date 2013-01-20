class CreateBasements < ActiveRecord::Migration
  def change
    create_table :basements do |t|

      t.string :category,:unique=>true,:null=>false
    end
  end
end
