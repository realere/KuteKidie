class Childminder < ActiveRecord::Base
  mount_uploader :childminder_image, ChildminderImageUploader
end

