class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :age_of_kids, :integer
  end
end
