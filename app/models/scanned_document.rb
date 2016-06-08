class ScannedDocument < Attachment
  attachment :file, content_type: %w(image/jpeg image/jpg image/png application/pdf)
end
