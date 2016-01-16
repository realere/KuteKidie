class CreateChildminders < ActiveRecord::Migration
  def change
    create_table :childminders do |t|
      t.string :name
      t.integer :no_of_children
      t.string :phone_number
      t.string :email
      t.string :location
      t.string :rating
      t.text :about_me

      t.timestamps null: false
    end
  end
end
