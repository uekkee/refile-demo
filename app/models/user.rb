class User < ActiveRecord::Base

  belongs_to :cover_image, class_name: Image, foreign_key: :cover_image_id
  accepts_nested_attributes_for :cover_image

  belongs_to :skill_sheet, class_name: ScannedDocument, foreign_key: :skill_sheet_id
  accepts_nested_attributes_for :skill_sheet

end
