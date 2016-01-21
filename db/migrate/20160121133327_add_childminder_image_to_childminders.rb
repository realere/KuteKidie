class AddChildminderImageToChildminders < ActiveRecord::Migration
  def change
    add_column :childminders, :childminder_image, :string
  end
end
