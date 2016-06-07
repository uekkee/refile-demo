class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 64
      t.timestamps null: false
    end
  end
end
