class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string     :type, null: false
      t.string     :file_id, null: false
      t.integer    :file_size, null: false
      t.string     :file_content_type, null: false
      t.string     :file_filename, null: false
      t.timestamps null: false
    end
    add_index  :attachments, :type
  end
end
