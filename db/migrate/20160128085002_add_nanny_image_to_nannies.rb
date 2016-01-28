class AddNannyImageToNannies < ActiveRecord::Migration
  def change
    add_column :nannies, :nanny_image, :string
  end
end
