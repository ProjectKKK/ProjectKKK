class CreateProfs < ActiveRecord::Migration
  def change
    create_table :profs do |t|
      t.string :name
      t.integer :gender
      t.integer :age
      t.string :live
      t.text :introduce

      t.timestamps null: false
    end
  end
end
