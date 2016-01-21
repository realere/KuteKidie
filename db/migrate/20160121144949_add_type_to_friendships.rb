class AddTypeToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :type, :string
  end
end
