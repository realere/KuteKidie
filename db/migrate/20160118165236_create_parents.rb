class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :location

      t.timestamps null: false
    end
  end
end
