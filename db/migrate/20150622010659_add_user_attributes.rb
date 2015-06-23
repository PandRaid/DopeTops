class AddUserAttributes < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string, null: false
  	add_column :users, :last_name, :string, null: false
  	add_column :users, :username, :string, null: false, unique: true
    add_column :users, :zip, :integer
    add_column :users, :birth, :date
    add_column :users, :country, :string, null: false
  end
end
