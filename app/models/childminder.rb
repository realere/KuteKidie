class Childminder < ActiveRecord::Base
  mount_uploader :childminder_image, ChildminderImageUploader

  has_many :reviews
  has_many :friendships, class_name: 'ChildminderFriendship', foreign_key: :friend_id
  has_many :friends, through: :friendships, source: :user


  def friends_with?(user)
    friends.include? user
  end
end

