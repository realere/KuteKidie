class CreateNannies < ActiveRecord::Migration
  def change
    create_table :nannies do |t|
      t.string :name
      t.string :gender
      t.string :no_of_children
      t.string :phone_number
      t.string :email
      t.string :location
      t.string :rating
      t.text :about_me
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
