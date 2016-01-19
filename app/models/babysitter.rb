class Babysitter < ActiveRecord::Base
  has_many :child, through: :babysitter_child



  mount_uploader :babysitter_image, BabysitterImageUploader
end
