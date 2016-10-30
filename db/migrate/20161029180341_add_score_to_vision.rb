class AddScoreToVision < ActiveRecord::Migration
  def change
    add_column :visions , :score , :integer
  end
end
