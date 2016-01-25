class AddTypeToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :friend_type, :string
  end
end
