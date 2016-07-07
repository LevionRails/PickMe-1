class CreateAllcreators < ActiveRecord::Migration
  def change
    create_table :allcreators do |t|


      t.integer :skintype
      t.string :name
      t.string :title
      t.string :url
      
      t.timestamps null: false
    end
  end
end
