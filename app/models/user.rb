class User < ActiveRecord::Base
  attachment :profile_image, content_type: %w(image/jpeg image/jpg image/png)

  belongs_to :cover_image, class_name: Attachment, foreign_key: :cover_image_id
  accepts_nested_attributes_for :cover_image

  belongs_to :skill_sheet, class_name: Attachment, foreign_key: :skill_sheet_id
  accepts_nested_attributes_for :skill_sheet

end
