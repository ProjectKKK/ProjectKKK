class AddImageToProfs < ActiveRecord::Migration
  def change
    add_column :profs, :image, :string
  end
end
