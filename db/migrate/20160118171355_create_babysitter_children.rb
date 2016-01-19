class CreateBabysitterChildren < ActiveRecord::Migration
  def change
    create_table :babysitter_children do |t|

      t.timestamps null: false
    end
  end
end
