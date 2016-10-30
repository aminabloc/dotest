class AddUserIdToValues < ActiveRecord::Migration
  def change
    add_column :values, :user_id, :integer
    add_index :values, :user_id  
  end
end
