class ChangeUserColoumnsToNotNull < ActiveRecord::Migration
  def change
  	change_column :users, :name, :string, :null => false
  	change_column :users, :email, :string, :null => false
  	change_column :users, :password_digest, :string, :null => false
  	change_column :users, :age, :integer, :null => false
  	change_column :users, :gender, :string, :null => false
  end
end
