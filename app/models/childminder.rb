class Childminder < ActiveRecord::Base
  mount_uploader :childminder_image, ChildminderImageUploader

has_many :reviews


end

