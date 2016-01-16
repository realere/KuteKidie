class RemoveUserIdFieldsFromBabysitter < ActiveRecord::Migration
  def change
    remove_column :babysitters, :user_id, :integer
  end
end
