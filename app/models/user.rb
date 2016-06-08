class User < ActiveRecord::Base
  attachment :profile_image, content_type: %w(image/jpeg image/jpg image/png)
end
