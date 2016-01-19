class Nanny < ActiveRecord::Base
  belongs_to :categories
  has_many :users
 mount_uploader :nanny_image, NannyImageUploader


end
