class ChildminderFriendship < Friendship
  belongs_to :friend, :class_name => "Childminder"

end