class RemoveChildminderIdFromFriendships < ActiveRecord::Migration
  def change
    remove_column :friendships, :childminder_id, :integer
  end
end
