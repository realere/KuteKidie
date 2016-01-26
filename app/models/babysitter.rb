class Babysitter < ActiveRecord::Base

  mount_uploader :babysitter_image, BabysitterImageUploader
  has_many :reviews
  has_many :friendships, as: :friend
  has_many :friends, through: :friendships, source: :user


  def friends_with?(user)
    friends.include? user
  end



  
end




