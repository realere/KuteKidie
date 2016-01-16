class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :location
      t.text :about_me
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
