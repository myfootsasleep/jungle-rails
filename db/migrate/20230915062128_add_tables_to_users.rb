class AddTablesToUsers < ActiveRecord::Migration[6.1]
  def change
  add_column :users, :username, :string
  add_column :users, :password, :string
  add_column :users, :email, :string
  end
end
