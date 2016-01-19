class AddBabysitterImageToBabysitters < ActiveRecord::Migration
  def change
    add_column :babysitters, :babysitter_image, :string
  end
end
