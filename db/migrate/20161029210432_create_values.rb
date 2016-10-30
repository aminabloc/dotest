class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.text :whoserve
      t.text :howserve
      t.text :legacy

      t.timestamps null: false
    end
  end
end
