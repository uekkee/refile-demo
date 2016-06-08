class AddAttachmentColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cover_image_id, :integer
    add_column :users, :skill_sheet_id, :integer
  end
end
