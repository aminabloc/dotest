class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.string :industry
      t.string :ten
      t.string :dreamjob
      t.string :style

      t.timestamps null: false
    end
  end
end
