class NannyFriendship < Friendship
  belongs_to :friend, :class_name => "Nanny"

end