class AddUserIdToProfs < ActiveRecord::Migration
  def change
    add_column :profs, :user_id, :integer
  end
end
