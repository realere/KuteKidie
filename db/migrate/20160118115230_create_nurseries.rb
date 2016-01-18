class CreateNurseries < ActiveRecord::Migration
  def change
    create_table :nurseries do |t|
      t.string :name
      t.string :age_group
      t.integer :no_of_staff
      t.string :phone_number
      t.string :email
      t.string :location
      t.string :rating
      t.integer :available_space
      t.text :about_us

      t.timestamps null: false
    end
  end
end
