class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name, limit: 64
      t.integer :cover_image_id
      t.integer :skill_sheet_id
      t.timestamps null: false
    end
  end
end
