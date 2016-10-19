class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :image
      t.string :movie
      t.string :name
      t.text :description
      t.string :where

      t.timestamps null: false
    end
  end
end
