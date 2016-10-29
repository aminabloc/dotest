class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname , :string
    add_column :users, :lastname , :string
    add_column :users, :classyear , :integer
    add_column :users, :bloc1 , :string
    add_column :users, :bloc2 , :string
    add_column :users, :bloc3 , :string
    add_column :users, :school , :string




  end
end
