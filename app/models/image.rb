class Image < Attachment
  attachment :file, content_type: %w(image/jpeg image/jpg image/png)
end
