class AddCategoryIdToChildminder < ActiveRecord::Migration
  def change
    add_column :childminders, :category_id, :integer
  end
end
