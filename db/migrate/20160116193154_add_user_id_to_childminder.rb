class AddUserIdToChildminder < ActiveRecord::Migration
  def change
    add_column :childminders, :user_id, :integer
  end
end
