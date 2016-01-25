class BabysitterFriendship < Friendship
  belongs_to :friend, :class_name => "Babysitter"

end